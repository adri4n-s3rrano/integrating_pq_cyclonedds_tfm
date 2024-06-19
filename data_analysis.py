import matplotlib
matplotlib.use('TkAgg')
import matplotlib.pyplot as plt
import numpy as np
import csv
import matplotlib.colors as mcolors


def read_csv(filename, column_index):
    with open(filename, 'r') as file:
        reader = csv.reader(file, delimiter=',')
        rows = list(reader)

    # Convert data to numpy array
    data = np.array(rows[1:], dtype=float)  # Skip the header row

    # Compute mean and standard deviation for each row
    mean_row = np.mean(data, axis=0)
    std_row = np.std(data, axis=0)

    # Extract column data
    column_data = data[:, column_index]

    return column_data, mean_row[column_index], std_row[column_index]


def plot_boxplot(column_data_list, mean_value_list, plot_title, titles, y_label, plots_dir):
    fig, ax = plt.subplots(figsize=(12, 6))

    ax.grid(True, linestyle='--', which='both', color='grey', alpha=0.4)
    ax.set_axisbelow(True)

    # Generate boxplots
    bp = ax.boxplot(column_data_list,
                    patch_artist=True,
                    showmeans=True,
                    meanline=True,
                    medianprops=dict(color='red', linewidth=2),
                    boxprops=dict(linewidth=1.25, color='black', facecolor='none'),
                    whiskerprops=dict(linewidth=1.25, color='black'),
                    capprops=dict(linewidth=1.25, color='black')
                    )

    # Plot mean value without standard deviation error bars
    for i, mean_value in enumerate(mean_value_list):
        ax.errorbar(i + 1, mean_value, fmt='o', color='blue', capsize=5)

    # Use specified color palette for scatter plots
    color_palette = list(mcolors.LinearSegmentedColormap.from_list("", ["#9fcf69", "#33acdc"])(np.linspace(0, 1, 4)))

    # Add scatter points for all data points below the boxplot
    for i, column_data in enumerate(column_data_list):
        jitter = 0.4 * (np.random.rand(len(column_data)) - 0.5)
        ax.scatter(np.full_like(column_data, i + 1) + jitter, column_data, color=color_palette[i], alpha=0.3)

    ax.set_xticklabels(titles, rotation=45, ha='right', fontsize=11)
    ax.tick_params(axis='y', labelsize=11)

    plt.xlabel('KEX algorithm', fontweight='bold', fontsize=12)
    plt.ylabel(y_label, fontweight='bold', fontsize=12, labelpad=20)
    plt.title(plot_title, fontweight='bold', fontsize=16, pad=20)

    print(f'Saving plot to {plots_dir}')
    plt.savefig(f'{plots_dir}', dpi=300, bbox_inches='tight')

    plt.tight_layout()
    plt.show()


if __name__ == '__main__':
    DATA_TYPE = 'handshake_time'
    DATA_TYPE = 'pub_sub_time'
    if DATA_TYPE == 'handshake_time':
        column_index = 0  # Change column index as needed
        y_label = 'Handshake time (ms)'
        plots_dir = 'handshake_time.png'
        plot_title = 'DDS handshake time (Without Optional values) with CycloneDDS'

        filenames = [
            'handshake_times_dh.csv',
            'handshake_times_pq.csv',
        ]
    elif DATA_TYPE == 'pub_sub_time':
        column_index = 1
        y_label = 'Communication time (s)'
        plots_dir = 'communication_time.png'
        plot_title = 'DDS Handshake (Without Optional values) and Message Exchange time with CycloneDDS'

        filenames = [
            'test_output_dh.csv',
            'test_output_pq.csv',
        ]
    else:
        raise ValueError('Invalid data type, valid options are handshake_time and pub_sub_time')
    titles = [
        'DH',
        'KEM_Kyber768'
    ]

    column_data_list = []
    mean_value_list = []
    std_value_list = []

    for filename in filenames:
        column_data, mean_value, std_value = read_csv(filename, column_index)
        column_data_list.append(column_data)
        mean_value_list.append(mean_value)
        std_value_list.append(std_value)

    plot_boxplot(column_data_list, mean_value_list, plot_title, titles, y_label, plots_dir)
