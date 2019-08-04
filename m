Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D9A1C80AEC
	for <lists+openwrt-devel@lfdr.de>; Sun,  4 Aug 2019 14:32:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	MIME-Version:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=lqqqwNTYDvUr+RyLg5D526TaAAPTH0IzAzQ3JDG7/Sw=; b=LBg
	scRwqe75lLQG84Gnpv/i2mgPOEgEpdmCc4bqE5oVNE6y63BlxTSk/aiMwMJ5l6TTRlsGTwuEU1Q8E
	1rcBa4LaiJYFvKL0Xw8InZDVDxtzs3CNb9eEAKEuoBTnqTTsUnOVg2cqHtpvXG3/BMbnn+rZmO4fT
	1Ub7kLGLg3fn4MAbv0AXL32XXL/7WuGvAYwM7VgIaGXW3UWJ+yOvgL0xxF+808B5FsoErv969MNES
	0DCqs59GHnin+vZdjCVGCbcTWJpQKkEapq+qnnGTwTchdyG2Mvz4VafoQ5RQSB5PF3kRRqzKkoC6y
	KdGk0/M9ohtVzBXlEphq38FV8XWQIjg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1huFfv-0007VM-Pq; Sun, 04 Aug 2019 12:31:47 +0000
Received: from mail-io1-xd30.google.com ([2607:f8b0:4864:20::d30])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1huFfq-0007V5-8x
 for openwrt-devel@lists.openwrt.org; Sun, 04 Aug 2019 12:31:43 +0000
Received: by mail-io1-xd30.google.com with SMTP id g20so161894617ioc.12
 for <openwrt-devel@lists.openwrt.org>; Sun, 04 Aug 2019 05:31:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to
 :content-transfer-encoding;
 bh=CsIFO4mIduUEOhHOwqQy3NP2Ru9MAcs9NAdva1ND0uM=;
 b=FoX6/92qNRQAPpuOr8cNkJrlQzTUJuzHyBR+/Lhvfyjg/E56l67yK9AZPitDjh80Kn
 s6YKJNtwDaIsvHsrO0X2MIW9ROfhBg6tkiyDFXRaOVWQhlOGyJwNOJzpj9sYsnOYf56l
 tyPce3AUTpqpK1Su8UvNmkVfaucSRl64ZgIePuFUiDaWDrIBilyDhthQz0kJSA1gD5Pt
 +sAwlWcNpiF934e8ALN9AmiKiw6JlJKu2oFHPUD4iSTEpD8uO+qIXLpoqE08IUSufMmv
 F7Zx4xuOj5tmRAqmkPu92ukq2wngbIgaefXvOt7L38Vw/M6gg5ybqZAfWINahKQX63r0
 bC6w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to
 :content-transfer-encoding;
 bh=CsIFO4mIduUEOhHOwqQy3NP2Ru9MAcs9NAdva1ND0uM=;
 b=YTmjMeWk4zPJCbNqNU3KzLOTX2urlVL3DpVy35RLhDEO4kQqLNBxALojjCHnPGDOPX
 gPO2LQl0W94+OaDUlaE6/43c7NhLgL1t1fZgBbMmfpUQBwQ+pDm+U1YgDIu428koCYP3
 RCD4mKZQq9/HP91aOz/hltjChdODehp9g/a+5MwXxqpDfAaMaF1tmF/yVa4IXljRdgpo
 O/BRdeus0tHgZWA9fDHrBJwOPw7Lvt+wyirfdSicTbgGQcgsGxhfokjsQqoKbve/4aOd
 DI2hyhexQ5qTR2axkR5bRpgx6Cxma1aDD3zzJYXoNMyh6+WZphFPxlgps5waFvkd0QHa
 wvmw==
X-Gm-Message-State: APjAAAUmxBNGt4GyHYaZPpxruTQGVtRJa/5pCDhm8zM63sPlshsTGrnG
 365AVfXQmct1E1mxiQsdJiAu+a/rW4cKVKEvjLodmR2y
X-Google-Smtp-Source: APXvYqyxv9Jq5W9XggFGfGU005VkRLh1aVDY9JNiIaQpNJD1V8N/092YdeKTWkgX5scyLsytqU8BrsmIRHOp3HwF1rM=
X-Received: by 2002:a6b:8e82:: with SMTP id q124mr46652239iod.68.1564921899865; 
 Sun, 04 Aug 2019 05:31:39 -0700 (PDT)
MIME-Version: 1.0
From: Ansuel Smith <ansuelsmth@gmail.com>
Date: Sun, 4 Aug 2019 14:31:09 +0200
Message-ID: <CA+_ehUzoLWx9r157iddqvPLaeWSw=vaym9qSttWYiTHhTBcD_Q@mail.gmail.com>
To: openwrt-devel@lists.openwrt.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190804_053142_342864_FCDF9E56 
X-CRM114-Status: UNSURE (   4.02  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (ansuelsmth[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d30 listed in]
 [list.dnswl.org]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
Subject: [OpenWrt-Devel] Compiling error with WSL
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Hello with recent commit i have this problem. Think this is cause by
space in PATH variable
Can this be fixed?

autoreconf: configure.ac: not using Libtool
autoreconf: running:
/home/ansuel/openwrt/staging_dir/host/bin/autoconf --include=m4
--include=. --prepend-include=/home/ansuel/openwrt/staging_dir/host/share/aclocal
--force
autoreconf: configure.ac: not using Autoheader
autoreconf: running:
/home/ansuel/openwrt/staging_dir/host/bin/automake --add-missing
--force-missing
autoreconf: Leaving directory `.'
(cd /home/ansuel/openwrt/build_dir/hostpkg/intltool-0.51.0/; if [ -x
configure ]; then cp -fpR
/home/ansuel/openwrt/scripts/config.{guess,sub}
/home/ansuel/openwrt/build_dir/hostpkg/intltool-0.51.0// && CC="ccache
gcc" CFLAGS="-O2 -I/home/ansuel/openwrt/staging_dir/host/include
-I/home/ansuel/openwrt/staging_dir/hostpkg/include
-I/home/ansuel/openwrt/staging_dir/target-arm_cortex-a9+vfpv3_musl_eabi/host/include"
CXX="ccache g++"
CPPFLAGS="-I/home/ansuel/openwrt/staging_dir/host/include
-I/home/ansuel/openwrt/staging_dir/hostpkg/include
-I/home/ansuel/openwrt/staging_dir/target-arm_cortex-a9+vfpv3_musl_eabi/host/include"
LDFLAGS="-L/home/ansuel/openwrt/staging_dir/host/lib
-L/home/ansuel/openwrt/staging_dir/hostpkg/lib
-L/home/ansuel/openwrt/staging_dir/target-arm_cortex-a9+vfpv3_musl_eabi/host/lib"
CONFIG_SHELL="/usr/bin/env bash"
PATH=/home/ansuel/openwrt/staging_dir/hostpkg/bin:/home/ansuel/openwrt/staging_dir/hostpkg/usr/bin:/home/ansuel/openwrt/staging_dir/toolchain-arm_cortex-a9+vfpv3_gcc-9.1.0_musl_eabi/bin:/home/ansuel/openwrt/staging_dir/toolchain-arm_cortex-a9+vfpv3_gcc-9.1.0_musl_eabi/bin:/home/ansuel/openwrt/staging_dir/host/bin:/home/ansuel/openwrt/staging_dir/toolchain-arm_cortex-a9+vfpv3_gcc-9.1.0_musl_eabi/bin:/home/ansuel/openwrt/staging_dir/host/bin:/home/ansuel/openwrt/staging_dir/host/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games:/mnt/c/PROGRAMDATA/ORACLE/JAVA/JAVAPATH:/mnt/c/PROGRAM:FILES/BROADCOM/BROADCOM:802.11:NETWORK:ADAPTER:/mnt/c/WINDOWS/SYSTEM32:/mnt/c/WINDOWS:/mnt/c/WINDOWS/SYSTEM32/WBEM:/mnt/c/WINDOWS/SYSTEM32/WINDOWSPOWERSHELL/V1.0/:/mnt/c/PROGRAM:FILES:(X86)/NVIDIA:CORPORATION/PHYSX/COMMON:/mnt/c/PROGRAM:FILES:(X86)/GNU/GNUPG/PUB:/mnt/c/PROGRAM:FILES:(X86)/PUTTY/:/mnt/c/PROGRAM:FILES/GIT/CMD:/mnt/c/USERS/ANSUE/APPDATA/LOCAL/MICROSOFT/WINDOWSAPPS:/mnt/c/PROGRAM:FILES:(X86)/NMAP:/mnt/c/ADB:/mnt/c/PROGRAM:FILES:(X86)/SKYPE/PHONE/:/mnt/c/WINDOWS/SYSTEM32/LIBRESSL/:/mnt/c/WINDOWS/SYSTEM32/OPENSSH/:/mnt/c/PROGRAM:FILES/NVIDIA:CORPORATION/NVIDIA:NVDLISR:/mnt/c/WINDOWS/SYSTEM32:/mnt/c/WINDOWS:/mnt/c/WINDOWS/SYSTEM32/WBEM:/mnt/c/WINDOWS/SYSTEM32/WINDOWSPOWERSHELL/V1.0/:/mnt/c/WINDOWS/SYSTEM32/OPENSSH/:/mnt/c/WINDOWS/system32:/mnt/c/WINDOWS:/mnt/c/WINDOWS/System32/Wbem:/mnt/c/WINDOWS/System32/WindowsPowerShell/v1.0/:/mnt/c/WINDOWS/System32/OpenSSH/:/mnt/c/Users/Ansue/AppData/Local/Microsoft/WindowsApps:/mnt/c/Program:Files:(x86)/Nmap:/mnt/c/Users/Ansue/AppData/Local/Programs/Fiddler:/mnt/c/Users/Ansue/AppData/Local/Microsoft/WindowsApps:/snap/bin
 bash ./configure --target=x86_64-pc-linux-gnu
--host=x86_64-pc-linux-gnu --build=x86_64-pc-linux-gnu
--program-prefix="" --program-suffix=""
--prefix=/home/ansuel/openwrt/staging_dir/hostpkg
--exec-prefix=/home/ansuel/openwrt/staging_dir/hostpkg
--sysconfdir=/home/ansuel/openwrt/staging_dir/hostpkg/etc
--localstatedir=/home/ansuel/openwrt/staging_dir/hostpkg/var
--sbindir=/home/ansuel/openwrt/staging_dir/hostpkg/bin ; fi )
bash: -c: line 0: syntax error near unexpected token `('
bash: -c: line 0: `(cd
/home/ansuel/openwrt/build_dir/hostpkg/intltool-0.51.0/; if [ -x
configure ]; then cp -fpR
/home/ansuel/openwrt/scripts/config.{guess,sub}
/home/ansuel/openwrt/build_dir/hostpkg/intltool-0.51.0// && CC="ccache
gcc" CFLAGS="-O2 -I/home/ansuel/openwrt/staging_dir/host/include
-I/home/ansuel/openwrt/staging_dir/hostpkg/include
-I/home/ansuel/openwrt/staging_dir/target-arm_cortex-a9+vfpv3_musl_eabi/host/include"
CXX="ccache g++"
CPPFLAGS="-I/home/ansuel/openwrt/staging_dir/host/include
-I/home/ansuel/openwrt/staging_dir/hostpkg/include
-I/home/ansuel/openwrt/staging_dir/target-arm_cortex-a9+vfpv3_musl_eabi/host/include"
LDFLAGS="-L/home/ansuel/openwrt/staging_dir/host/lib
-L/home/ansuel/openwrt/staging_dir/hostpkg/lib
-L/home/ansuel/openwrt/staging_dir/target-arm_cortex-a9+vfpv3_musl_eabi/host/lib"
CONFIG_SHELL="/usr/bin/env bash"
PATH=/home/ansuel/openwrt/staging_dir/hostpkg/bin:/home/ansuel/openwrt/staging_dir/hostpkg/usr/bin:/home/ansuel/openwrt/staging_dir/toolchain-arm_cortex-a9+vfpv3_gcc-9.1.0_musl_eabi/bin:/home/ansuel/openwrt/staging_dir/toolchain-arm_cortex-a9+vfpv3_gcc-9.1.0_musl_eabi/bin:/home/ansuel/openwrt/staging_dir/host/bin:/home/ansuel/openwrt/staging_dir/toolchain-arm_cortex-a9+vfpv3_gcc-9.1.0_musl_eabi/bin:/home/ansuel/openwrt/staging_dir/host/bin:/home/ansuel/openwrt/staging_dir/host/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games:/mnt/c/PROGRAMDATA/ORACLE/JAVA/JAVAPATH:/mnt/c/PROGRAM:FILES/BROADCOM/BROADCOM:802.11:NETWORK:ADAPTER:/mnt/c/WINDOWS/SYSTEM32:/mnt/c/WINDOWS:/mnt/c/WINDOWS/SYSTEM32/WBEM:/mnt/c/WINDOWS/SYSTEM32/WINDOWSPOWERSHELL/V1.0/:/mnt/c/PROGRAM:FILES:(X86)/NVIDIA:CORPORATION/PHYSX/COMMON:/mnt/c/PROGRAM:FILES:(X86)/GNU/GNUPG/PUB:/mnt/c/PROGRAM:FILES:(X86)/PUTTY/:/mnt/c/PROGRAM:FILES/GIT/CMD:/mnt/c/USERS/ANSUE/APPDATA/LOCAL/MICROSOFT/WINDOWSAPPS:/mnt/c/PROGRAM:FILES:(X86)/NMAP:/mnt/c/ADB:/mnt/c/PROGRAM:FILES:(X86)/SKYPE/PHONE/:/mnt/c/WINDOWS/SYSTEM32/LIBRESSL/:/mnt/c/WINDOWS/SYSTEM32/OPENSSH/:/mnt/c/PROGRAM:FILES/NVIDIA:CORPORATION/NVIDIA:NVDLISR:/mnt/c/WINDOWS/SYSTEM32:/mnt/c/WINDOWS:/mnt/c/WINDOWS/SYSTEM32/WBEM:/mnt/c/WINDOWS/SYSTEM32/WINDOWSPOWERSHELL/V1.0/:/mnt/c/WINDOWS/SYSTEM32/OPENSSH/:/mnt/c/WINDOWS/system32:/mnt/c/WINDOWS:/mnt/c/WINDOWS/System32/Wbem:/mnt/c/WINDOWS/System32/WindowsPowerShell/v1.0/:/mnt/c/WINDOWS/System32/OpenSSH/:/mnt/c/Users/Ansue/AppData/Local/Microsoft/WindowsApps:/mnt/c/Program:Files:(x86)/Nmap:/mnt/c/Users/Ansue/AppData/Local/Programs/Fiddler:/mnt/c/Users/Ansue/AppData/Local/Microsoft/WindowsApps:/snap/bin
 bash ./configure --target=x86_64-pc-linux-gnu
--host=x86_64-pc-linux-gnu --build=x86_64-pc-linux-gnu
--program-prefix="" --program-suffix=""
--prefix=/home/ansuel/openwrt/staging_dir/hostpkg
--exec-prefix=/home/ansuel/openwrt/staging_dir/hostpkg
--sysconfdir=/home/ansuel/openwrt/staging_dir/hostpkg/etc
--localstatedir=/home/ansuel/openwrt/staging_dir/hostpkg/var
--sbindir=/home/ansuel/openwrt/staging_dir/hostpkg/bin ; fi )'
make[3]: *** [Makefile:43:
/home/ansuel/openwrt/build_dir/hostpkg/intltool-0.51.0/.configured]
Error 1
make[3]: Leaving directory '/home/ansuel/openwrt/feeds/packages/libs/intltool'
time: package/feeds/packages/intltool/host-compile#2.10#0.29#4.51
make[2]: *** [package/Makefile:107:
package/feeds/packages/intltool/host/compile] Error 2
make[2]: Leaving directory '/home/ansuel/openwrt'
make[1]: *** [package/Makefile:103:
/home/ansuel/openwrt/staging_dir/target-arm_cortex-a9+vfpv3_musl_eabi/stamp/.package_compile]
Error 2
make[1]: Leaving directory '/home/ansuel/openwrt'

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
