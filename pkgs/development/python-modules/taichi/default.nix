{ lib
, python3
, fetchPypi
, buildPythonPackage
}:

buildPythonPackage rec {
  pname = "taichi";
  version = "1.6.0";
  format = "pyproject";

  src = fetchPypi {
    inherit pname version;
    hash = "sha256-mIDI0nPJ136cnfqx+ay/earg56/m6ZCHi/WPUh32MMM=";
  };

  # nativeBuildInputs = [
  #   python3.pkgs.cmake
  #   python3.pkgs.ninja
  #   python3.pkgs.numpy
  #   python3.pkgs.pybind11
  #   python3.pkgs.scikit-build
  #   python3.pkgs.setuptools
  #   python3.pkgs.wheel
  # ];

  pythonImportsCheck = [ "taichi" ];

  meta = with lib; {
    description = "Productive & portable high-performance programming in Python";
    homepage = "https://github.com/taichi-dev/taichi";
    license = licenses.asl20;
    maintainers = with maintainers; [ ];
  };
}
