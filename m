Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D988E127084
	for <lists+openwrt-devel@lfdr.de>; Thu, 19 Dec 2019 23:15:38 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:References:In-Reply-To:Message-Id:Date:To:From:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=G7A3BsH4i3/nQ3+YKJyNxb+4AbDxao6muUwUIWcxkmM=; b=X+8DCMTWnxGpLyy/Efz+t+jS2
	s736uU7z2uIPv94RSSJY2na4dgjyHZHuBS7+JNzT5w+ETsaYS7f56huhBeOW0Ee3l4osGpmC/UkZZ
	zx9m2S9FR+z9tUz3zxEsRcYq2YW5eXBkDIRWPGY8teCF6KlrYHVi0F3btnpT1qBUOBVrRBX40v7rt
	ngdWXKRoloS6EgVKI/WCAWwC74hMa4sbIuyikf3nV+oHz4cAG7zJCG8G4PRzVtU5ejCHbvMt59yi+
	B66M4rjaLYen2IksdVoWP1IbqtbdmGBqwZ/9JhWK4xeRwnMWjN7ciVrmuSv6MZAelevYJWzbjLj/C
	qQmm2JFYw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ii451-00046P-SS; Thu, 19 Dec 2019 22:15:35 +0000
Received: from smtp-out.xnet.cz ([178.217.244.18])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ii41L-00054b-1c
 for openwrt-devel@lists.openwrt.org; Thu, 19 Dec 2019 22:11:53 +0000
Received: from meh.true.cz (meh.true.cz [108.61.167.218])
 (Authenticated sender: petr@true.cz)
 by smtp-out.xnet.cz (Postfix) with ESMTPSA id 688004BCA;
 Thu, 19 Dec 2019 23:11:45 +0100 (CET)
Received: by meh.true.cz (OpenSMTPD) with ESMTP id 30bbbe90;
 Thu, 19 Dec 2019 23:11:35 +0100 (CET)
From: =?UTF-8?q?Petr=20=C5=A0tetiar?= <ynezz@true.cz>
To: openwrt-devel@lists.openwrt.org
Date: Thu, 19 Dec 2019 23:11:18 +0100
Message-Id: <20191219221125.22646-10-ynezz@true.cz>
In-Reply-To: <20191219221125.22646-1-ynezz@true.cz>
References: <20191219221125.22646-1-ynezz@true.cz>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191219_141147_554997_FCB75681 
X-CRM114-Status: GOOD (  12.26  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [178.217.244.18 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
Subject: [OpenWrt-Devel] [PATCH ubus 09/16] add fuzzer and cram based unit
 tests
X-BeenThere: openwrt-devel@lists.openwrt.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: <openwrt-devel.lists.openwrt.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/openwrt-devel>, 
 <mailto:openwrt-devel-request@lists.openwrt.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/openwrt-devel/>
List-Post: <mailto:openwrt-devel@lists.openwrt.org>
List-Help: <mailto:openwrt-devel-request@lists.openwrt.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/openwrt-devel>,
 <mailto:openwrt-devel-request@lists.openwrt.org?subject=subscribe>
Cc: =?UTF-8?q?Petr=20=C5=A0tetiar?= <ynezz@true.cz>
Content-Type: multipart/mixed; boundary="===============0042868664019523038=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

--===============0042868664019523038==
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

For improved QA etc.

Signed-off-by: Petr Å tetiar <ynezz@true.cz>
---
 CMakeLists.txt                                |  16 +++++
 tests/CMakeLists.txt                          |  18 ++++++
 tests/cram/CMakeLists.txt                     |  22 +++++++
 tests/cram/test_ubus.t                        |  58 ++++++++++++++++++
 tests/cram/test_ubusd.t                       |  24 ++++++++
 tests/fuzz/CMakeLists.txt                     |  18 ++++++
 .../05fe405753166f125559e7c9ac558654f107c7e9  | Bin 0 -> 8 bytes
 .../0660e49c13f6d167a8298d885f724bad8f62fc35  | Bin 0 -> 8 bytes
 .../37dadeab8d8ce7611f230f9524c1e8ab751c4a6a  | Bin 0 -> 8 bytes
 .../71520a5c4b5ca73903216857abbad54a8002d44a  | Bin 0 -> 2 bytes
 .../73c72a4d2bd1cd31b0b44256a888feec9eaaba27  | Bin 0 -> 9 bytes
 .../8db068f76b98df8730f5308b12c793fdf04c47c2  | Bin 0 -> 8 bytes
 .../c1dfd96eea8cc2b62785275bca38ac261256e278  |   1 +
 .../c42ac1c46f1d4e211c735cc7dfad4ff8391110e9  | Bin 0 -> 3 bytes
 ...h-1b8fb1be45db3aff7699100f497fb74138f3df4f | Bin 0 -> 6 bytes
 ...h-4c4d2c3c9ade5da9347534e290305c3b9760f627 | Bin 0 -> 17 bytes
 ...h-5e9937b197c88bf4e7b7ee2612456cad4cb83f5b | Bin 0 -> 86 bytes
 ...h-75b146c4e6fac64d3e62236b27c64b50657bab2a | Bin 0 -> 4 bytes
 ...h-813f3e68661da09c26d4a87dbb9d5099e92be50f | Bin 0 -> 36 bytes
 ...h-98595faa58ba01d85ba4fd0b109cd3d490b45795 | Bin 0 -> 6 bytes
 ...h-d0f3aa7d60a094b021f635d4edb7807c055a4ea1 |   1 +
 ...h-df9d1243057b27bbad6211e5a23d1cb699028aa2 | Bin 0 -> 16 bytes
 ...h-e2fd5ecb3b37926743256f1083f47a07c39e10c2 | Bin 0 -> 66 bytes
 .../e2814b29dd2fd5db02b1ab7c5e147e1194a489ce  | Bin 0 -> 8 bytes
 tests/fuzz/corpus/valid-blobmsg.bin           | Bin 0 -> 176 bytes
 tests/fuzz/test-fuzz.c                        |  40 ++++++++++++
 26 files changed, 198 insertions(+)
 create mode 100644 tests/CMakeLists.txt
 create mode 100644 tests/cram/CMakeLists.txt
 create mode 100644 tests/cram/test_ubus.t
 create mode 100644 tests/cram/test_ubusd.t
 create mode 100644 tests/fuzz/CMakeLists.txt
 create mode 100644 tests/fuzz/corpus/05fe405753166f125559e7c9ac558654f107c7e9
 create mode 100644 tests/fuzz/corpus/0660e49c13f6d167a8298d885f724bad8f62fc35
 create mode 100644 tests/fuzz/corpus/37dadeab8d8ce7611f230f9524c1e8ab751c4a6a
 create mode 100644 tests/fuzz/corpus/71520a5c4b5ca73903216857abbad54a8002d44a
 create mode 100644 tests/fuzz/corpus/73c72a4d2bd1cd31b0b44256a888feec9eaaba27
 create mode 100644 tests/fuzz/corpus/8db068f76b98df8730f5308b12c793fdf04c47c2
 create mode 100644 tests/fuzz/corpus/c1dfd96eea8cc2b62785275bca38ac261256e278
 create mode 100644 tests/fuzz/corpus/c42ac1c46f1d4e211c735cc7dfad4ff8391110e9
 create mode 100644 tests/fuzz/corpus/crash-1b8fb1be45db3aff7699100f497fb74138f3df4f
 create mode 100644 tests/fuzz/corpus/crash-4c4d2c3c9ade5da9347534e290305c3b9760f627
 create mode 100644 tests/fuzz/corpus/crash-5e9937b197c88bf4e7b7ee2612456cad4cb83f5b
 create mode 100644 tests/fuzz/corpus/crash-75b146c4e6fac64d3e62236b27c64b50657bab2a
 create mode 100644 tests/fuzz/corpus/crash-813f3e68661da09c26d4a87dbb9d5099e92be50f
 create mode 100644 tests/fuzz/corpus/crash-98595faa58ba01d85ba4fd0b109cd3d490b45795
 create mode 100644 tests/fuzz/corpus/crash-d0f3aa7d60a094b021f635d4edb7807c055a4ea1
 create mode 100644 tests/fuzz/corpus/crash-df9d1243057b27bbad6211e5a23d1cb699028aa2
 create mode 100644 tests/fuzz/corpus/crash-e2fd5ecb3b37926743256f1083f47a07c39e10c2
 create mode 100644 tests/fuzz/corpus/e2814b29dd2fd5db02b1ab7c5e147e1194a489ce
 create mode 100644 tests/fuzz/corpus/valid-blobmsg.bin
 create mode 100644 tests/fuzz/test-fuzz.c

diff --git a/CMakeLists.txt b/CMakeLists.txt
index dc6e42847086..5c0f760d031c 100644
--- a/CMakeLists.txt
+++ b/CMakeLists.txt
@@ -41,6 +41,15 @@ TARGET_LINK_LIBRARIES(ubus ${ubox_library})
 
 find_library(json NAMES json-c json)
 
+MACRO(ADD_UNIT_TEST_SAN name output_name)
+  ADD_EXECUTABLE(${name}-san ${name}.c)
+  TARGET_COMPILE_OPTIONS(${name}-san PRIVATE -g -fno-omit-frame-pointer -fsanitize=undefined,address,leak -fno-sanitize-recover=all)
+  TARGET_LINK_OPTIONS(${name}-san PRIVATE -fsanitize=undefined,address,leak)
+  TARGET_LINK_LIBRARIES(${name}-san ubus ubusd_library ${ubox_library} ${blob_library} ${json})
+  TARGET_INCLUDE_DIRECTORIES(${name}-san PRIVATE ${PROJECT_SOURCE_DIR})
+  SET_TARGET_PROPERTIES(${name}-san PROPERTIES OUTPUT_NAME ${output_name})
+ENDMACRO(ADD_UNIT_TEST_SAN)
+
 ADD_LIBRARY(ubusd_library STATIC ubusd.c ubusd_proto.c ubusd_id.c ubusd_obj.c ubusd_event.c ubusd_acl.c ubusd_monitor.c)
 ADD_EXECUTABLE(ubusd ubusd_main.c)
 TARGET_LINK_LIBRARIES(ubusd ubusd_library ${ubox_library} ${blob_library} ${json})
@@ -52,6 +61,13 @@ TARGET_LINK_LIBRARIES(cli ubus ${ubox_library} ${blob_library} ${json})
 ADD_SUBDIRECTORY(lua)
 ADD_SUBDIRECTORY(examples)
 
+IF(UNIT_TESTING)
+  ENABLE_TESTING()
+  ADD_SUBDIRECTORY(tests)
+  ADD_UNIT_TEST_SAN(cli ubus-san)
+  ADD_UNIT_TEST_SAN(ubusd_main ubusd-san)
+ENDIF()
+
 INSTALL(TARGETS ubus cli
 	ARCHIVE DESTINATION lib
 	LIBRARY DESTINATION lib
diff --git a/tests/CMakeLists.txt b/tests/CMakeLists.txt
new file mode 100644
index 000000000000..0cb33427e45a
--- /dev/null
+++ b/tests/CMakeLists.txt
@@ -0,0 +1,18 @@
+ADD_SUBDIRECTORY(cram)
+
+MACRO(ADD_UNIT_TEST name)
+  ADD_EXECUTABLE(${name} ${name}.c)
+  TARGET_LINK_LIBRARIES(${name} ubox blobmsg_json json_script ${json})
+  TARGET_INCLUDE_DIRECTORIES(${name} PRIVATE ${PROJECT_SOURCE_DIR})
+ENDMACRO(ADD_UNIT_TEST)
+
+FILE(GLOB test_cases "test-*.c")
+FOREACH(test_case ${test_cases})
+  GET_FILENAME_COMPONENT(test_case ${test_case} NAME_WE)
+  ADD_UNIT_TEST(${test_case})
+  ADD_UNIT_TEST_SAN(${test_case})
+ENDFOREACH(test_case)
+
+IF(CMAKE_C_COMPILER_ID STREQUAL "Clang")
+  ADD_SUBDIRECTORY(fuzz)
+ENDIF()
diff --git a/tests/cram/CMakeLists.txt b/tests/cram/CMakeLists.txt
new file mode 100644
index 000000000000..30593aeb7605
--- /dev/null
+++ b/tests/cram/CMakeLists.txt
@@ -0,0 +1,22 @@
+FIND_PACKAGE(PythonInterp 3 REQUIRED)
+FILE(GLOB test_cases "test_*.t")
+
+SET(PYTHON_VENV_DIR "${CMAKE_CURRENT_BINARY_DIR}/.venv")
+SET(PYTHON_VENV_PIP "${PYTHON_VENV_DIR}/bin/pip")
+SET(PYTHON_VENV_CRAM "${PYTHON_VENV_DIR}/bin/cram")
+
+ADD_CUSTOM_COMMAND(
+	OUTPUT ${PYTHON_VENV_CRAM}
+	COMMAND ${PYTHON_EXECUTABLE} -m venv ${PYTHON_VENV_DIR}
+	COMMAND ${PYTHON_VENV_PIP} install cram
+)
+ADD_CUSTOM_TARGET(prepare-cram-venv ALL DEPENDS ${PYTHON_VENV_CRAM})
+
+ADD_TEST(
+	NAME cram
+	COMMAND ${PYTHON_VENV_CRAM} ${test_cases}
+	WORKING_DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR}
+)
+
+SET_PROPERTY(TEST cram APPEND PROPERTY ENVIRONMENT "UBUS=$<TARGET_FILE:ubus>")
+SET_PROPERTY(TEST cram APPEND PROPERTY ENVIRONMENT "TEST_BIN_DIR=$<TARGET_FILE_DIR:ubus>")
diff --git a/tests/cram/test_ubus.t b/tests/cram/test_ubus.t
new file mode 100644
index 000000000000..e4ba87fd14a6
--- /dev/null
+++ b/tests/cram/test_ubus.t
@@ -0,0 +1,58 @@
+set environment for convenience:
+
+  $ [ -n "$TEST_BIN_DIR" ] && export PATH="$TEST_BIN_DIR:$PATH"
+  $ alias ubus='valgrind --quiet --leak-check=full ubus'
+
+check usage:
+
+  $ ubus
+  Usage: ubus [<options>] <command> [arguments...]
+  Options:
+   -s <socket>:\t\tSet the unix domain socket to connect to (esc)
+   -t <timeout>:\t\tSet the timeout (in seconds) for a command to complete (esc)
+   -S:\t\t\tUse simplified output (for scripts) (esc)
+   -v:\t\t\tMore verbose output (esc)
+   -m <type>:\t\t(for monitor): include a specific message type (esc)
+  \t\t\t(can be used more than once) (esc)
+   -M <r|t>\t\t(for monitor): only capture received or transmitted traffic (esc)
+  
+  Commands:
+   - list [<path>]\t\t\tList objects (esc)
+   - call <path> <method> [<message>]\tCall an object method (esc)
+   - listen [<path>...]\t\t\tListen for events (esc)
+   - send <type> [<message>]\t\tSend an event (esc)
+   - wait_for <object> [<object>...]\tWait for multiple objects to appear on ubus (esc)
+   - monitor\t\t\t\tMonitor ubus traffic (esc)
+  
+  [1]
+
+  $ ubus-san
+  Usage: ubus-san [<options>] <command> [arguments...]
+  Options:
+   -s <socket>:\t\tSet the unix domain socket to connect to (esc)
+   -t <timeout>:\t\tSet the timeout (in seconds) for a command to complete (esc)
+   -S:\t\t\tUse simplified output (for scripts) (esc)
+   -v:\t\t\tMore verbose output (esc)
+   -m <type>:\t\t(for monitor): include a specific message type (esc)
+  \t\t\t(can be used more than once) (esc)
+   -M <r|t>\t\t(for monitor): only capture received or transmitted traffic (esc)
+  
+  Commands:
+   - list [<path>]\t\t\tList objects (esc)
+   - call <path> <method> [<message>]\tCall an object method (esc)
+   - listen [<path>...]\t\t\tListen for events (esc)
+   - send <type> [<message>]\t\tSend an event (esc)
+   - wait_for <object> [<object>...]\tWait for multiple objects to appear on ubus (esc)
+   - monitor\t\t\t\tMonitor ubus traffic (esc)
+  
+  [1]
+
+check monitor command:
+
+  $ ubus monitor
+  Failed to connect to ubus
+  [255]
+
+  $ ubus-san monitor
+  Failed to connect to ubus
+  [255]
diff --git a/tests/cram/test_ubusd.t b/tests/cram/test_ubusd.t
new file mode 100644
index 000000000000..1f72e61a8bb8
--- /dev/null
+++ b/tests/cram/test_ubusd.t
@@ -0,0 +1,24 @@
+set environment for convenience:
+
+  $ [ -n "$TEST_BIN_DIR" ] && export PATH="$TEST_BIN_DIR:$PATH"
+  $ alias ubusd='valgrind --quiet --leak-check=full ubusd'
+
+check usage:
+
+  $ ubusd -h
+  ubusd: invalid option -- 'h'
+  Usage: ubusd [<options>]
+  Options: 
+    -A <path>:\t\tSet the path to ACL files (esc)
+    -s <socket>:\t\tSet the unix domain socket to listen on (esc)
+  
+  [1]
+
+  $ ubusd-san -h
+  ubusd-san: invalid option -- 'h'
+  Usage: ubusd-san [<options>]
+  Options: 
+    -A <path>:\t\tSet the path to ACL files (esc)
+    -s <socket>:\t\tSet the unix domain socket to listen on (esc)
+  
+  [1]
diff --git a/tests/fuzz/CMakeLists.txt b/tests/fuzz/CMakeLists.txt
new file mode 100644
index 000000000000..ecdfd32a1a6e
--- /dev/null
+++ b/tests/fuzz/CMakeLists.txt
@@ -0,0 +1,18 @@
+FILE(GLOB test_cases "test-*.c")
+
+MACRO(ADD_FUZZER_TEST name)
+  ADD_EXECUTABLE(${name} ${name}.c)
+  TARGET_COMPILE_OPTIONS(${name} PRIVATE -g -O1 -fno-omit-frame-pointer -fsanitize=fuzzer,address,leak,undefined)
+  TARGET_INCLUDE_DIRECTORIES(${name} PRIVATE ${PROJECT_SOURCE_DIR})
+  TARGET_LINK_OPTIONS(${name} PRIVATE -stdlib=libc++ -fsanitize=fuzzer,address,leak,undefined)
+  TARGET_LINK_LIBRARIES(${name} ubus ubusd_library ${ubox_library} ${blob_library} ${json})
+  ADD_TEST(
+    NAME ${name}
+    COMMAND ${name} -max_len=256 -timeout=10 -max_total_time=300 ${CMAKE_CURRENT_SOURCE_DIR}/corpus
+  )
+ENDMACRO(ADD_FUZZER_TEST)
+
+FOREACH(test_case ${test_cases})
+  GET_FILENAME_COMPONENT(test_case ${test_case} NAME_WE)
+  ADD_FUZZER_TEST(${test_case})
+ENDFOREACH(test_case)
diff --git a/tests/fuzz/corpus/05fe405753166f125559e7c9ac558654f107c7e9 b/tests/fuzz/corpus/05fe405753166f125559e7c9ac558654f107c7e9
new file mode 100644
index 0000000000000000000000000000000000000000..1b1cb4d44c57c2d7a5122870fa6ac3e62ff7e94e
GIT binary patch
literal 8
KcmZQzfB*mh2mk>9

literal 0
HcmV?d00001

diff --git a/tests/fuzz/corpus/0660e49c13f6d167a8298d885f724bad8f62fc35 b/tests/fuzz/corpus/0660e49c13f6d167a8298d885f724bad8f62fc35
new file mode 100644
index 0000000000000000000000000000000000000000..ec23f710327d388930349f21e39d79aecaf3971a
GIT binary patch
literal 8
Mcmd<$0s#gF00B|}Jpcdz

literal 0
HcmV?d00001

diff --git a/tests/fuzz/corpus/37dadeab8d8ce7611f230f9524c1e8ab751c4a6a b/tests/fuzz/corpus/37dadeab8d8ce7611f230f9524c1e8ab751c4a6a
new file mode 100644
index 0000000000000000000000000000000000000000..9281635f0e9260b19cd1f470c1de0be0397cc2e7
GIT binary patch
literal 8
NcmZQzU=Uyc0ssJ501*HH

literal 0
HcmV?d00001

diff --git a/tests/fuzz/corpus/71520a5c4b5ca73903216857abbad54a8002d44a b/tests/fuzz/corpus/71520a5c4b5ca73903216857abbad54a8002d44a
new file mode 100644
index 0000000000000000000000000000000000000000..b4e009dd6d7e91ff56595a84010db2eb81e41622
GIT binary patch
literal 2
Jcmcb}0004`0MY;e

literal 0
HcmV?d00001

diff --git a/tests/fuzz/corpus/73c72a4d2bd1cd31b0b44256a888feec9eaaba27 b/tests/fuzz/corpus/73c72a4d2bd1cd31b0b44256a888feec9eaaba27
new file mode 100644
index 0000000000000000000000000000000000000000..490a43d8a011333cb0d599b294b465ab33fe25f2
GIT binary patch
literal 9
QcmZQzVBq3n<YHg|005Z)AOHXW

literal 0
HcmV?d00001

diff --git a/tests/fuzz/corpus/8db068f76b98df8730f5308b12c793fdf04c47c2 b/tests/fuzz/corpus/8db068f76b98df8730f5308b12c793fdf04c47c2
new file mode 100644
index 0000000000000000000000000000000000000000..91fa1a0929eebfcff6b81cf8e5310266ff62845a
GIT binary patch
literal 8
NcmZSJ0s;mG1^@u$04V?f

literal 0
HcmV?d00001

diff --git a/tests/fuzz/corpus/c1dfd96eea8cc2b62785275bca38ac261256e278 b/tests/fuzz/corpus/c1dfd96eea8cc2b62785275bca38ac261256e278
new file mode 100644
index 000000000000..62f9457511f8
--- /dev/null
+++ b/tests/fuzz/corpus/c1dfd96eea8cc2b62785275bca38ac261256e278
@@ -0,0 +1 @@
+6
\ No newline at end of file
diff --git a/tests/fuzz/corpus/c42ac1c46f1d4e211c735cc7dfad4ff8391110e9 b/tests/fuzz/corpus/c42ac1c46f1d4e211c735cc7dfad4ff8391110e9
new file mode 100644
index 0000000000000000000000000000000000000000..3d70d85eba81360f757bc71859316667610c5339
GIT binary patch
literal 3
KcmZQ%U<3dF2LJ;A

literal 0
HcmV?d00001

diff --git a/tests/fuzz/corpus/crash-1b8fb1be45db3aff7699100f497fb74138f3df4f b/tests/fuzz/corpus/crash-1b8fb1be45db3aff7699100f497fb74138f3df4f
new file mode 100644
index 0000000000000000000000000000000000000000..407114eb1a9fc2c82f40cac9948c75ac23948385
GIT binary patch
literal 6
Lcmd;L00Kt<0D}Nb

literal 0
HcmV?d00001

diff --git a/tests/fuzz/corpus/crash-4c4d2c3c9ade5da9347534e290305c3b9760f627 b/tests/fuzz/corpus/crash-4c4d2c3c9ade5da9347534e290305c3b9760f627
new file mode 100644
index 0000000000000000000000000000000000000000..2ca392f0c6109a4b0d6cf44ed18d69133addd8ca
GIT binary patch
literal 17
NcmZQ(U|@cV3;<Ep3#b49

literal 0
HcmV?d00001

diff --git a/tests/fuzz/corpus/crash-5e9937b197c88bf4e7b7ee2612456cad4cb83f5b b/tests/fuzz/corpus/crash-5e9937b197c88bf4e7b7ee2612456cad4cb83f5b
new file mode 100644
index 0000000000000000000000000000000000000000..b49d3e7de86e2402f1d182aad74819a2c0abd8cc
GIT binary patch
literal 86
OcmZQ(U|_yRbpQY#s6>+h

literal 0
HcmV?d00001

diff --git a/tests/fuzz/corpus/crash-75b146c4e6fac64d3e62236b27c64b50657bab2a b/tests/fuzz/corpus/crash-75b146c4e6fac64d3e62236b27c64b50657bab2a
new file mode 100644
index 0000000000000000000000000000000000000000..39ae859cc00ce0c4b80c5a1d0bf031b6a6310ce0
GIT binary patch
literal 4
LcmZQ(U|<3O01^NO

literal 0
HcmV?d00001

diff --git a/tests/fuzz/corpus/crash-813f3e68661da09c26d4a87dbb9d5099e92be50f b/tests/fuzz/corpus/crash-813f3e68661da09c26d4a87dbb9d5099e92be50f
new file mode 100644
index 0000000000000000000000000000000000000000..62338ff4f0801529d0f6598c02bfbb9c57b5533c
GIT binary patch
literal 36
QcmZQ(U|{}_7cese01OQs?*IS*

literal 0
HcmV?d00001

diff --git a/tests/fuzz/corpus/crash-98595faa58ba01d85ba4fd0b109cd3d490b45795 b/tests/fuzz/corpus/crash-98595faa58ba01d85ba4fd0b109cd3d490b45795
new file mode 100644
index 0000000000000000000000000000000000000000..530ae8f6c1f7b9fa3ed86d1bf66b7e0a6d8b7485
GIT binary patch
literal 6
Ncmd<$;^Jap0{{TP051Rl

literal 0
HcmV?d00001

diff --git a/tests/fuzz/corpus/crash-d0f3aa7d60a094b021f635d4edb7807c055a4ea1 b/tests/fuzz/corpus/crash-d0f3aa7d60a094b021f635d4edb7807c055a4ea1
new file mode 100644
index 000000000000..46b749ee7968
--- /dev/null
+++ b/tests/fuzz/corpus/crash-d0f3aa7d60a094b021f635d4edb7807c055a4ea1
@@ -0,0 +1 @@
+ÿÿÿÿÝ
diff --git a/tests/fuzz/corpus/crash-df9d1243057b27bbad6211e5a23d1cb699028aa2 b/tests/fuzz/corpus/crash-df9d1243057b27bbad6211e5a23d1cb699028aa2
new file mode 100644
index 0000000000000000000000000000000000000000..f6899b51bcb4283949208b7937e9a4ce3a7ef13c
GIT binary patch
literal 16
RcmZQzVBln8U;rWr4FCY<02=@R

literal 0
HcmV?d00001

diff --git a/tests/fuzz/corpus/crash-e2fd5ecb3b37926743256f1083f47a07c39e10c2 b/tests/fuzz/corpus/crash-e2fd5ecb3b37926743256f1083f47a07c39e10c2
new file mode 100644
index 0000000000000000000000000000000000000000..92a30d23706ee628d4a076fcbe0b7613650c2039
GIT binary patch
literal 66
QcmZQ(U|{}F0bphZ0GOFO(EtDd

literal 0
HcmV?d00001

diff --git a/tests/fuzz/corpus/e2814b29dd2fd5db02b1ab7c5e147e1194a489ce b/tests/fuzz/corpus/e2814b29dd2fd5db02b1ab7c5e147e1194a489ce
new file mode 100644
index 0000000000000000000000000000000000000000..cc81c2c7fcbddacaab466e0b4cb46d0e8e4e1332
GIT binary patch
literal 8
NcmZQz-~s{$1^@uO04V?f

literal 0
HcmV?d00001

diff --git a/tests/fuzz/corpus/valid-blobmsg.bin b/tests/fuzz/corpus/valid-blobmsg.bin
new file mode 100644
index 0000000000000000000000000000000000000000..2d0c68e8a1273ae12ac6d4401c7471927809a926
GIT binary patch
literal 176
zcmZo>V31>A&rK~ZPE1c_U|{e_&B@8vQ7F$Z%1KcK@*9Cd3@kaB#U%_3tqcr2Kp`+d
zVlyJKnK~F4BpBFI@=KF)K*ljRBy39qfhLeS93`p6B`Jv|i3|+5)B(*BU|`JvxdNn}
Rv6+E^kAW5J90ntx007e$BMSfk

literal 0
HcmV?d00001

diff --git a/tests/fuzz/test-fuzz.c b/tests/fuzz/test-fuzz.c
new file mode 100644
index 000000000000..9922ff9de609
--- /dev/null
+++ b/tests/fuzz/test-fuzz.c
@@ -0,0 +1,40 @@
+#include <stdio.h>
+#include <stdint.h>
+#include <stddef.h>
+#include <limits.h>
+
+#include <libubox/blob.h>
+#include <libubox/blobmsg.h>
+
+#include "ubusmsg.h"
+#include "libubus.h"
+#include "libubus-internal.h"
+
+static void _ubus_validate_hdr(const uint8_t *data, size_t size)
+{
+	if (size > sizeof(struct ubus_msghdr))
+		return;
+
+	ubus_validate_hdr((struct ubus_msghdr *) data);
+}
+
+static void _ubus_parse_msg(const uint8_t *data, size_t size)
+{
+	struct blob_attr *attr = (struct blob_attr *) data;
+
+	if (size < sizeof(struct blob_attr *))
+		return;
+
+	if (blob_pad_len(attr) > UBUS_MAX_MSGLEN)
+		return;
+
+	ubus_parse_msg(attr);
+}
+
+int LLVMFuzzerTestOneInput(const uint8_t *data, size_t size)
+{
+	_ubus_validate_hdr(data, size);
+	_ubus_parse_msg(data, size);
+
+	return 0;
+}


--===============0042868664019523038==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============0042868664019523038==--
