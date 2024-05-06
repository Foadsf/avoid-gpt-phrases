# avoid-gpt-phrases

This repository contains a simple command-line tool to help identify and avoid overused phrases commonly found in AI-generated text, particularly in LaTeX/TeX documents. The tool is designed to assist writers in recognizing and mitigating the potential overreliance on certain phrases, which can sometimes be a telltale sign of AI-generated content.

## Usage

The repository includes the following files:

- `avoid_words.txt`: A text file containing a list of phrases to be checked against in your LaTeX/TeX documents.
- `count_words.bat`: A Windows batch script that utilizes the `texcount` utility to count the occurrences of the specified phrases in a given LaTeX/TeX file.
   - `count_words.sh`: equivalent Bash script.

To use the tool, follow these steps:

1. Ensure that you have `texcount` installed on your system. If not, you can download it from [here](https://app.uio.no/ifi/texcount/download.html).
   * if you are using MiKTeX on Windows, you can install via `mpm --install=texcount`
2. Open a command prompt or terminal window.
3. Navigate to the directory containing the `count_words.bat`/`count_words.sh` script.
4. Run the script with the path to your LaTeX/TeX file as an argument:

   ```batch
   count_words.bat path\to\your\file.tex
   ```
   on Windows, or

   ```bash
   ./count_words.sh path/to/your/file.tex
   ```

   on POSIX compatible OSes (e.g., macOS, GNU-Linux...)

   The script will analyze the specified file and display the occurrences of the phrases listed in the `avoid_words.txt` file.

Note: For non-Windows users, the bash script has not been properly tested yet.

## Customization

You can customize the list of phrases to be checked by modifying the `avoid_words.txt` file. Simply add or remove phrases as needed, with one phrase per line.

## Contributing

Contributions to this project are welcome. If you find any issues or have suggestions for improvements, please open an issue or submit a pull request.

## License

This project is licensed under the [GPL-3.0](LICENSE).
