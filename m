Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 585B4F6D32
	for <lists+openwrt-devel@lfdr.de>; Mon, 11 Nov 2019 04:12:51 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=eQFC+8uBvmL1zSXN8pzgTft51o2aLrFWuiEkQWN4888=; b=nuyK21ZtOuRXsE
	AaA+pVL9bj8xtMC4iu6KsQ3hxupKzOXkGeXQkK2cC7q9BLCU9Hrx9L4+Ethm2A7PdUg3JMz4pASn2
	As4pihtinsW2knOKJEhbMc5L86jR//4buNYT1rKoZG92A1oMoEvLkwQhsbaLt4OthymuHJP4aKVEi
	wFr0mY0VYoZeXI+Y+B6Med45ZGTtUCbVWwYEmPItOjGpb8+eUhBoQgEgG2n49Z+5OWWGhUhWLpzNI
	Rb3djNaM+vdur+5St6TFdSO5kwGSnIlNl+NThFsxOonF+TC6Eb85rXavBx/MTTMngTsJbEzecdb/a
	BqiBIl/jnnD73yMxmQaA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iU08E-0008Gq-Pe; Mon, 11 Nov 2019 03:12:46 +0000
Received: from relay1-d.mail.gandi.net ([217.70.183.193])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iU080-0008Fs-AQ
 for openwrt-devel@lists.openwrt.org; Mon, 11 Nov 2019 03:12:34 +0000
X-Originating-IP: 72.234.165.80
Received: from tb.home (udp050203uds.hawaiiantel.net [72.234.165.80])
 (Authenticated sender: mail@aparcar.org)
 by relay1-d.mail.gandi.net (Postfix) with ESMTPSA id 47B8C240003;
 Mon, 11 Nov 2019 03:12:18 +0000 (UTC)
From: Paul Spooren <mail@aparcar.org>
To: openwrt-devel@lists.openwrt.org
Date: Sun, 10 Nov 2019 17:12:13 -1000
Message-Id: <20191111031213.11689-1-mail@aparcar.org>
X-Mailer: git-send-email 2.24.0.rc1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191110_191232_640824_F0E7D834 
X-CRM114-Status: GOOD (  11.20  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.193 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [217.70.183.193 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
Subject: [OpenWrt-Devel] [PATCH] scripts: rewritten dumpinfo.py from
 buildbot.git
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
Cc: Jo-Philipp Wich <jo@mein.io>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

The dumpinfo script parses `target/linux/` for targets and architectures
and prints them to stdout. This is currently used by the buildbot to
automatically generate the buildjobs.

This script is a Python3 rewrite of the Perl script dumpinfo.pl[0] with
the additional feature of allowing to run only on a specific target.

Running only on a specific target can be desireable if a target is added
via feeds.conf. This way only that target is added as a buildjob.

The motivation to rewrite this script in Python is that the buildbot
uses Python which allowing it to directly import the script instead of
running it as a subprocess.

The motivation to add this script to openwrt.git instead of buildbot.git
is that the script is generic enough to be used for other purposes and
as the buildbot clones openwrt.git anyway, it does not add additional
files.

The `architecture` output is not exactly the same as for the original
script as the latter does not sort the targets before printing, as the
Python implementation does.

CC: Jo-Philipp Wich <jo@mein.io>

[0]: https://git.openwrt.org/?p=buildbot.git;a=blob;f=scripts/dumpinfo.pl;h=aa97f8d60379076a41b968402e9337cea824ece5;hb=HEAD

Signed-off-by: Paul Spooren <mail@aparcar.org>
---
 scripts/dumpinfo.py | 143 ++++++++++++++++++++++++++++++++++++++++++++
 1 file changed, 143 insertions(+)
 create mode 100755 scripts/dumpinfo.py

diff --git a/scripts/dumpinfo.py b/scripts/dumpinfo.py
new file mode 100755
index 0000000000..41b7c95b85
--- /dev/null
+++ b/scripts/dumpinfo.py
@@ -0,0 +1,143 @@
+#!/usr/bin/env python3
+
+from os import environ
+from pathlib import Path
+import subprocess
+import sys
+
+topdir = Path().cwd()
+
+targets = {}
+architectures = {}
+
+
+def eprint(msg: str):
+    """Print message to stderr and add newline
+
+    Args:
+        msg (str): Message to print
+    """
+    sys.stderr.write(msg + "\n")
+
+
+def get_make_values(cmd: list, target_dir: Path) -> list:
+    """Get Makefile values
+
+    Args:
+        cmd (list): Values to retrive
+        target_dir (Path): Path to run make
+
+    Returns:
+        (list) Makefile output split by newlines
+    """
+    return subprocess.run(
+        ["make", "-C", target_dir, "--no-print-directory", "TARGET_BUILD=1", "DUMP=1"]
+        + cmd,
+        capture_output=True,
+        cwd=topdir,
+        text=True,
+        env={**environ.copy(), "TOPDIR": topdir, "INCLUDE_DIR": topdir / "include"},
+    ).stdout.splitlines()
+
+
+def parse_targetinfo(target_dir: Path, subtarget: str):
+    """Parse target information like arch and features
+
+    After parsing the variables `architectures` and `targets` are automatically filled
+
+    Args:
+        target_dir (Path): Path to run make
+        subtarget (str): Subtarget to parse
+    """
+    result = get_make_values([f"SUBTARGET={subtarget}"], target_dir)
+    for line in result:
+        if line.startswith("Target:"):
+            target = line.split(": ")[1]
+        elif line.startswith("Target-Arch-Packages:"):
+            arch = line.split(": ")[1]
+        elif line.startswith("Target-Features:"):
+            features = line.split(": ")[1]
+        elif line == "@@":
+            if not (target and arch):
+                eprint(f"WARNING: {target} target or arch missing")
+                continue
+
+            if "broken" in features:
+                eprint(f"INFO: {target} skipp broken")
+                continue
+
+            if "source-only" in features:
+                eprint(f"INFO: {target} skipp source-only")
+                continue
+
+            if arch not in architectures:
+                architectures[arch] = set()
+
+            architectures[arch].add(target)
+            targets[target] = arch
+
+
+def get_targetinfo(target: str = "*"):
+    """Get information of all or specific target
+
+    Finds subtargets of target(s) and run `parse_targetinfo`
+
+    Args:
+        target (str): If set limit parsing to single target
+    """
+    for target_makefile in topdir.rglob(f"target/linux/{target}/Makefile"):
+        target_dir = target_makefile.parent
+        cmd = ["val.BOARD", "val.SUBTARGETS", "val.FEATURES"]
+        result = get_make_values(cmd, target_dir)
+
+        if len(result) != 3:
+            eprint(f"WARNING: {target_makefile} seems broken")
+            continue
+
+        target, subtargets, features = result
+        features = set(features.split())
+
+        if "broken" in features:
+            eprint(f"INFO: {target} skip broken")
+            continue
+
+        if "source-only" in features:
+            eprint(f"INFO: {target} skip source-only")
+            continue
+
+        if not subtargets:
+            eprint(f"INFO: {target} has no subtargets defined so use generic")
+            subtargets = ["generic"]
+        else:
+            subtargets = subtargets.split()
+
+        for subtarget in subtargets:
+            parse_targetinfo(target_dir, subtarget)
+
+
+def usage():
+    """Print usage and quits"""
+    print(f"Usage: {sys.argv[0]} targets [target]")
+    print(f"Usage: {sys.argv[0]} architectures [target]")
+    quit()
+
+
+if __name__ == "__main__":
+    if len(sys.argv) == 1:
+        usage()
+    if len(sys.argv) == 3:
+        target = sys.argv[2]
+    else:
+        target = "*"
+
+    if sys.argv[1] == "targets":
+        get_targetinfo(target)
+        for target, arch in sorted(targets.items()):
+            print(f"{target} {arch}")
+    elif sys.argv[1] == "architectures":
+        get_targetinfo(target)
+        print(architectures)
+        for arch, subtargets in sorted(architectures.items()):
+            print(f"{arch} {' '.join(sorted(subtargets))}")
+    else:
+        usage()
-- 
2.24.0.rc1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
