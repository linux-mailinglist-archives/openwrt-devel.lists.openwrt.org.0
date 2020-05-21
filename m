Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E07CC1DDA12
	for <lists+openwrt-devel@lfdr.de>; Fri, 22 May 2020 00:18:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:Mime-Version:Date:Message-ID:From:To:
	Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=oEjVXhp5Dc+f9uWPc/DMD5hcLNapQ68XCiq0PJ8VPDc=; b=Zw2sKqWuZ1o42u
	2u8nOM5m4BW5/xJFtKaLhBPwn3fZVSq7lZUWbjVhvWZ0PJAKVPPcN0AKKCghiwI7OtXUze2ZxLEnq
	oX9Fd7n46Aw9pw9FX1Afyf/MVQT/u2Yih77iVkM4AWc/X+o5lBqc0WQSasuFXF2pUce3qAi6dkMKF
	sfLKWuuekQAL/0KtvftoooIhxXU2IIUipgOfkpT7jC/PzYbNH4D1clYFuz4bM4oSlzw3U59w9LoQZ
	G5t5tHrxGFZaF81HKYWN1vu9fcB5YqCL4uyKFbbdwr9BCp1ADfU/fKc0txWxcfmoAskyCkDNSqMab
	KppQM2wKMjazy/XdHvPw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbtWN-0005jS-Ug; Thu, 21 May 2020 22:18:35 +0000
Received: from [2a01:4f8:1c0c:7572:2000:242:ac1a:6] (helo=mail.couprie.net)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbtWE-0005ia-MU
 for openwrt-devel@lists.openwrt.org; Thu, 21 May 2020 22:18:30 +0000
X-Virus-Scanned: Yes
To: openwrt-devel@lists.openwrt.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=couprie.net; s=mail;
 t=1590099501; bh=AXLCAPHNoPaGTwtmg7JrYUDvPa7V5dZKZW4XY3ffMzw=;
 h=To:From:Subject;
 b=CThEv+TpHzjELaCz0XJDCh7/Nsgw06mwbl04V+BZOwD7wK+NBfgG1kLriExgmYt8j
 XcdFu7UBcZwaiM5n+b5iZy4GkE8lefrHNO7AZ7lsNOxuLcWNQGQhTVLE280QXJ5+Xu
 b8qpPOjbZw1NgO0+nYhda2FT3R5ouWns2JDfBxYWlBuYK0cOFpf4XpTUD3PeQwiULV
 oatbxDVrBpXS0lSAdLY8IU3rKmjZvuYPgRa+CChRTZnypUGK8h6+5gmgkSN42oFXdk
 GYMwWOo8RcJAskkFP5ap8iaSlq7tr+FcyZMuvbGQ/qaFT0QQFq1AX6U9smRcdoT4Ki
 Nmgnq4q92IBOA==
From: Perry Couprie <perry@couprie.net>
Message-ID: <af916f8c-1c57-c098-7dc1-68cc7e10db8e@couprie.net>
Date: Fri, 22 May 2020 00:18:20 +0200
Mime-Version: 1.0
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200521_151827_466013_55B53DE4 
X-CRM114-Status: UNSURE (   2.85  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 1.1 (+)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (1.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 T_SPF_PERMERROR        SPF: test of record failed (permerror)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 1.3 RDNS_NONE Delivered to internal network by a host with no rDNS
Subject: [OpenWrt-Devel] Compile error compiling golang for Raspberri Pi3
 image.
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Hi,

I am trying to compile openwrt for Raspberri PI3.

On of the selected packages to compile in the firmware is GOLANG.

When compiling golang i get the following compile error.

What can i do to get it to compile ?

Perry

go-gcc-helper: running aarch64-openwrt-linux-musl-gcc -I 
../src/os/signal/internal/pty -fPIC -pthread -fmessage-length=0 
-fdebug-prefix-map=/home/pclc/build-3.2/build/brcm2709/trunk/luci/RaspberryPi3/openwrt-src/tmp/go-build166944271/b192=/tmp/go-build 
-gno-record-gcc-switches 
-I/home/pclc/build-3.2/build/brcm2709/trunk/luci/RaspberryPi3/openwrt-src/staging_dir/target-aarch64_cortex-a53_musl/usr/include 
-I/home/pclc/build-3.2/build/brcm2709/trunk/luci/RaspberryPi3/openwrt-src/staging_dir/toolchain-aarch64_cortex-a53_gcc-8.4.0_musl/usr/include 
-I/home/pclc/build-3.2/build/brcm2709/trunk/luci/RaspberryPi3/openwrt-src/staging_dir/toolchain-aarch64_cortex-a53_gcc-8.4.0_musl/include/fortify 
-I/home/pclc/build-3.2/build/brcm2709/trunk/luci/RaspberryPi3/openwrt-src/staging_dir/toolchain-aarch64_cortex-a53_gcc-8.4.0_musl/include 
-I $WORK/b192/ -Os -pipe -mcpu=cortex-a53 -g3 -fno-caller-saves -fno-plt 
-fhonour-copts -Wno-error=unused-but-set-variable 
-Wno-error=unused-result 
-ffile-prefix-map=/home/pclc/build-3.2/build/brcm2709/trunk/luci/RaspberryPi3/openwrt-src/build_dir/target-aarch64_cortex-a53_musl/go-1.14.3=go-1.14.3 
-Wformat -Werror=format-security -fstack-protector -D_FORTIFY_SOURCE=1 
-Wl,-z,now -Wl,-z,relro -o $WORK/b192/_cgo_main.o -c _cgo_main.c
# cmd/go
loadelf: 
/home/pclc/build-3.2/build/brcm2709/trunk/luci/RaspberryPi3/openwrt-src/build_dir/target-aarch64_cortex-a53_musl/go-1.14.3/pkg/linux_arm64/net.a(_x001.o): 
wm4.0.87d8ca21e8f70af1bffbb306e334e542<239>: sym#29: ignoring symbol in 
section 1 (type 0)
loadelf: 
/home/pclc/build-3.2/build/brcm2709/trunk/luci/RaspberryPi3/openwrt-src/build_dir/target-aarch64_cortex-a53_musl/go-1.14.3/pkg/linux_arm64/net.a(_x002.o): 
wm4.0.87d8ca21e8f70af1bffbb306e334e542<240>: sym#40: ignoring symbol in 
section 1 (type 0)
loadelf: 
/home/pclc/build-3.2/build/brcm2709/trunk/luci/RaspberryPi3/openwrt-src/build_dir/target-aarch64_cortex-a53_musl/go-1.14.3/pkg/linux_arm64/net.a(_x003.o): 
wm4.0.87d8ca21e8f70af1bffbb306e334e542<241>: sym#52: ignoring symbol in 
section 1 (type 0)
loadelf: 
/home/pclc/build-3.2/build/brcm2709/trunk/luci/RaspberryPi3/openwrt-src/build_dir/target-aarch64_cortex-a53_musl/go-1.14.3/pkg/linux_arm64/net.a(_x004.o): 
wm4.0.87d8ca21e8f70af1bffbb306e334e542<242>: sym#47: ignoring symbol in 
section 1 (type 0)
loadelf: 
/home/pclc/build-3.2/build/brcm2709/trunk/luci/RaspberryPi3/openwrt-src/build_dir/target-aarch64_cortex-a53_musl/go-1.14.3/pkg/linux_arm64/net.a(_x005.o): 
wm4.0.87d8ca21e8f70af1bffbb306e334e542<243>: sym#58: ignoring symbol in 
section 1 (type 0)
loadelf: 
/home/pclc/build-3.2/build/brcm2709/trunk/luci/RaspberryPi3/openwrt-src/build_dir/target-aarch64_cortex-a53_musl/go-1.14.3/pkg/linux_arm64/runtime/cgo.a(_x001.o): 
wm4.0.87d8ca21e8f70af1bffbb306e334e542<244>: sym#29: ignoring symbol in 
section 1 (type 0)
loadelf: 
/home/pclc/build-3.2/build/brcm2709/trunk/luci/RaspberryPi3/openwrt-src/build_dir/target-aarch64_cortex-a53_musl/go-1.14.3/pkg/linux_arm64/runtime/cgo.a(_x002.o): 
wm4.0.87d8ca21e8f70af1bffbb306e334e542<245>: sym#27: ignoring symbol in 
section 1 (type 0)
loadelf: 
/home/pclc/build-3.2/build/brcm2709/trunk/luci/RaspberryPi3/openwrt-src/build_dir/target-aarch64_cortex-a53_musl/go-1.14.3/pkg/linux_arm64/runtime/cgo.a(_x003.o): 
wm4.0.87d8ca21e8f70af1bffbb306e334e542<246>: sym#40: ignoring symbol in 
section 1 (type 0)
loadelf: 
/home/pclc/build-3.2/build/brcm2709/trunk/luci/RaspberryPi3/openwrt-src/build_dir/target-aarch64_cortex-a53_musl/go-1.14.3/pkg/linux_arm64/runtime/cgo.a(_x004.o): 
wm4.0.87d8ca21e8f70af1bffbb306e334e542<247>: sym#44: ignoring symbol in 
section 1 (type 0)
loadelf: 
/home/pclc/build-3.2/build/brcm2709/trunk/luci/RaspberryPi3/openwrt-src/build_dir/target-aarch64_cortex-a53_musl/go-1.14.3/pkg/linux_arm64/runtime/cgo.a(_x005.o): 
wm4.0.87d8ca21e8f70af1bffbb306e334e542<248>: sym#60: ignoring symbol in 
section 1 (type 0)
loadelf: 
/home/pclc/build-3.2/build/brcm2709/trunk/luci/RaspberryPi3/openwrt-src/build_dir/target-aarch64_cortex-a53_musl/go-1.14.3/pkg/linux_arm64/runtime/cgo.a(_x006.o): 
wm4.0.87d8ca21e8f70af1bffbb306e334e542<249>: sym#64: ignoring symbol in 
section 1 (type 0)
loadelf: 
/home/pclc/build-3.2/build/brcm2709/trunk/luci/RaspberryPi3/openwrt-src/build_dir/target-aarch64_cortex-a53_musl/go-1.14.3/pkg/linux_arm64/runtime/cgo.a(_x007.o): 
wm4.0.87d8ca21e8f70af1bffbb306e334e542<250>: sym#44: ignoring symbol in 
section 1 (type 0)
loadelf: 
/home/pclc/build-3.2/build/brcm2709/trunk/luci/RaspberryPi3/openwrt-src/build_dir/target-aarch64_cortex-a53_musl/go-1.14.3/pkg/linux_arm64/runtime/cgo.a(_x008.o): 
wm4.0.87d8ca21e8f70af1bffbb306e334e542<251>: sym#40: ignoring symbol in 
section 1 (type 0)
loadelf: 
/home/pclc/build-3.2/build/brcm2709/trunk/luci/RaspberryPi3/openwrt-src/build_dir/target-aarch64_cortex-a53_musl/go-1.14.3/pkg/linux_arm64/runtime/cgo.a(_x009.o): 
wm4.0.87d8ca21e8f70af1bffbb306e334e542<252>: sym#53: ignoring symbol in 
section 1 (type 0)
loadelf: 
/home/pclc/build-3.2/build/brcm2709/trunk/luci/RaspberryPi3/openwrt-src/build_dir/target-aarch64_cortex-a53_musl/go-1.14.3/pkg/linux_arm64/runtime/cgo.a(_x010.o): 
wm4.0.87d8ca21e8f70af1bffbb306e334e542<253>: sym#40: ignoring symbol in 
section 1 (type 0)
loadelf: 
/home/pclc/build-3.2/build/brcm2709/trunk/luci/RaspberryPi3/openwrt-src/build_dir/target-aarch64_cortex-a53_musl/go-1.14.3/pkg/linux_arm64/runtime/cgo.a(_x011.o): 
wm4.0.87d8ca21e8f70af1bffbb306e334e542<254>: sym#43: ignoring symbol in 
section 1 (type 0)
_cgo_init: relocation target x_cgo_init not defined
_cgo_mmap: relocation target x_cgo_mmap not defined
_cgo_munmap: relocation target x_cgo_munmap not defined
_cgo_notify_runtime_init_done: relocation target 
x_cgo_notify_runtime_init_done not defined
_cgo_sigaction: relocation target x_cgo_sigaction not defined
/home/pclc/build-3.2/build/brcm2709/trunk/luci/RaspberryPi3/openwrt-src/build_dir/target-aarch64_cortex-a53_musl/go-1.14.3/pkg/tool/linux_amd64/link: 
too many errors
# cmd/trace
loadelf: 
/home/pclc/build-3.2/build/brcm2709/trunk/luci/RaspberryPi3/openwrt-src/build_dir/target-aarch64_cortex-a53_musl/go-1.14.3/pkg/linux_arm64/net.a(_x001.o): 
wm4.0.87d8ca21e8f70af1bffbb306e334e542<170>: sym#29: ignoring symbol in 
section 1 (type 0)
loadelf: 
/home/pclc/build-3.2/build/brcm2709/trunk/luci/RaspberryPi3/openwrt-src/build_dir/target-aarch64_cortex-a53_musl/go-1.14.3/pkg/linux_arm64/net.a(_x002.o): 
wm4.0.87d8ca21e8f70af1bffbb306e334e542<171>: sym#40: ignoring symbol in 
section 1 (type 0)
loadelf: 
/home/pclc/build-3.2/build/brcm2709/trunk/luci/RaspberryPi3/openwrt-src/build_dir/target-aarch64_cortex-a53_musl/go-1.14.3/pkg/linux_arm64/net.a(_x003.o): 
wm4.0.87d8ca21e8f70af1bffbb306e334e542<172>: sym#52: ignoring symbol in 
section 1 (type 0)
loadelf: 
/home/pclc/build-3.2/build/brcm2709/trunk/luci/RaspberryPi3/openwrt-src/build_dir/target-aarch64_cortex-a53_musl/go-1.14.3/pkg/linux_arm64/net.a(_x004.o): 
wm4.0.87d8ca21e8f70af1bffbb306e334e542<173>: sym#47: ignoring symbol in 
section 1 (type 0)
loadelf: 
/home/pclc/build-3.2/build/brcm2709/trunk/luci/RaspberryPi3/openwrt-src/build_dir/target-aarch64_cortex-a53_musl/go-1.14.3/pkg/linux_arm64/net.a(_x005.o): 
wm4.0.87d8ca21e8f70af1bffbb306e334e542<174>: sym#58: ignoring symbol in 
section 1 (type 0)
loadelf: 
/home/pclc/build-3.2/build/brcm2709/trunk/luci/RaspberryPi3/openwrt-src/build_dir/target-aarch64_cortex-a53_musl/go-1.14.3/pkg/linux_arm64/runtime/cgo.a(_x001.o): 
wm4.0.87d8ca21e8f70af1bffbb306e334e542<175>: sym#29: ignoring symbol in 
section 1 (type 0)
loadelf: 
/home/pclc/build-3.2/build/brcm2709/trunk/luci/RaspberryPi3/openwrt-src/build_dir/target-aarch64_cortex-a53_musl/go-1.14.3/pkg/linux_arm64/runtime/cgo.a(_x002.o): 
wm4.0.87d8ca21e8f70af1bffbb306e334e542<176>: sym#27: ignoring symbol in 
section 1 (type 0)
loadelf: 
/home/pclc/build-3.2/build/brcm2709/trunk/luci/RaspberryPi3/openwrt-src/build_dir/target-aarch64_cortex-a53_musl/go-1.14.3/pkg/linux_arm64/runtime/cgo.a(_x003.o): 
wm4.0.87d8ca21e8f70af1bffbb306e334e542<177>: sym#40: ignoring symbol in 
section 1 (type 0)
loadelf: 
/home/pclc/build-3.2/build/brcm2709/trunk/luci/RaspberryPi3/openwrt-src/build_dir/target-aarch64_cortex-a53_musl/go-1.14.3/pkg/linux_arm64/runtime/cgo.a(_x004.o): 
wm4.0.87d8ca21e8f70af1bffbb306e334e542<178>: sym#44: ignoring symbol in 
section 1 (type 0)
loadelf: 
/home/pclc/build-3.2/build/brcm2709/trunk/luci/RaspberryPi3/openwrt-src/build_dir/target-aarch64_cortex-a53_musl/go-1.14.3/pkg/linux_arm64/runtime/cgo.a(_x005.o): 
wm4.0.87d8ca21e8f70af1bffbb306e334e542<179>: sym#60: ignoring symbol in 
section 1 (type 0)
loadelf: 
/home/pclc/build-3.2/build/brcm2709/trunk/luci/RaspberryPi3/openwrt-src/build_dir/target-aarch64_cortex-a53_musl/go-1.14.3/pkg/linux_arm64/runtime/cgo.a(_x006.o): 
wm4.0.87d8ca21e8f70af1bffbb306e334e542<180>: sym#64: ignoring symbol in 
section 1 (type 0)
loadelf: 
/home/pclc/build-3.2/build/brcm2709/trunk/luci/RaspberryPi3/openwrt-src/build_dir/target-aarch64_cortex-a53_musl/go-1.14.3/pkg/linux_arm64/runtime/cgo.a(_x007.o): 
wm4.0.87d8ca21e8f70af1bffbb306e334e542<181>: sym#44: ignoring symbol in 
section 1 (type 0)
loadelf: 
/home/pclc/build-3.2/build/brcm2709/trunk/luci/RaspberryPi3/openwrt-src/build_dir/target-aarch64_cortex-a53_musl/go-1.14.3/pkg/linux_arm64/runtime/cgo.a(_x008.o): 
wm4.0.87d8ca21e8f70af1bffbb306e334e542<182>: sym#40: ignoring symbol in 
section 1 (type 0)
loadelf: 
/home/pclc/build-3.2/build/brcm2709/trunk/luci/RaspberryPi3/openwrt-src/build_dir/target-aarch64_cortex-a53_musl/go-1.14.3/pkg/linux_arm64/runtime/cgo.a(_x009.o): 
wm4.0.87d8ca21e8f70af1bffbb306e334e542<183>: sym#53: ignoring symbol in 
section 1 (type 0)
loadelf: 
/home/pclc/build-3.2/build/brcm2709/trunk/luci/RaspberryPi3/openwrt-src/build_dir/target-aarch64_cortex-a53_musl/go-1.14.3/pkg/linux_arm64/runtime/cgo.a(_x010.o): 
wm4.0.87d8ca21e8f70af1bffbb306e334e542<184>: sym#40: ignoring symbol in 
section 1 (type 0)
loadelf: 
/home/pclc/build-3.2/build/brcm2709/trunk/luci/RaspberryPi3/openwrt-src/build_dir/target-aarch64_cortex-a53_musl/go-1.14.3/pkg/linux_arm64/runtime/cgo.a(_x011.o): 
wm4.0.87d8ca21e8f70af1bffbb306e334e542<185>: sym#43: ignoring symbol in 
section 1 (type 0)
_cgo_init: relocation target x_cgo_init not defined
_cgo_mmap: relocation target x_cgo_mmap not defined
_cgo_munmap: relocation target x_cgo_munmap not defined
_cgo_notify_runtime_init_done: relocation target 
x_cgo_notify_runtime_init_done not defined
_cgo_sigaction: relocation target x_cgo_sigaction not defined
/home/pclc/build-3.2/build/brcm2709/trunk/luci/RaspberryPi3/openwrt-src/build_dir/target-aarch64_cortex-a53_musl/go-1.14.3/pkg/tool/linux_amd64/link: 
too many errors
# cmd/pprof
loadelf: 
/home/pclc/build-3.2/build/brcm2709/trunk/luci/RaspberryPi3/openwrt-src/build_dir/target-aarch64_cortex-a53_musl/go-1.14.3/pkg/linux_arm64/net.a(_x001.o): 
wm4.0.87d8ca21e8f70af1bffbb306e334e542<200>: sym#29: ignoring symbol in 
section 1 (type 0)
loadelf: 
/home/pclc/build-3.2/build/brcm2709/trunk/luci/RaspberryPi3/openwrt-src/build_dir/target-aarch64_cortex-a53_musl/go-1.14.3/pkg/linux_arm64/net.a(_x002.o): 
wm4.0.87d8ca21e8f70af1bffbb306e334e542<201>: sym#40: ignoring symbol in 
section 1 (type 0)
loadelf: 
/home/pclc/build-3.2/build/brcm2709/trunk/luci/RaspberryPi3/openwrt-src/build_dir/target-aarch64_cortex-a53_musl/go-1.14.3/pkg/linux_arm64/net.a(_x003.o): 
wm4.0.87d8ca21e8f70af1bffbb306e334e542<202>: sym#52: ignoring symbol in 
section 1 (type 0)
loadelf: 
/home/pclc/build-3.2/build/brcm2709/trunk/luci/RaspberryPi3/openwrt-src/build_dir/target-aarch64_cortex-a53_musl/go-1.14.3/pkg/linux_arm64/net.a(_x004.o): 
wm4.0.87d8ca21e8f70af1bffbb306e334e542<203>: sym#47: ignoring symbol in 
section 1 (type 0)
loadelf: 
/home/pclc/build-3.2/build/brcm2709/trunk/luci/RaspberryPi3/openwrt-src/build_dir/target-aarch64_cortex-a53_musl/go-1.14.3/pkg/linux_arm64/net.a(_x005.o): 
wm4.0.87d8ca21e8f70af1bffbb306e334e542<204>: sym#58: ignoring symbol in 
section 1 (type 0)
loadelf: 
/home/pclc/build-3.2/build/brcm2709/trunk/luci/RaspberryPi3/openwrt-src/build_dir/target-aarch64_cortex-a53_musl/go-1.14.3/pkg/linux_arm64/runtime/cgo.a(_x001.o): 
wm4.0.87d8ca21e8f70af1bffbb306e334e542<205>: sym#29: ignoring symbol in 
section 1 (type 0)
loadelf: 
/home/pclc/build-3.2/build/brcm2709/trunk/luci/RaspberryPi3/openwrt-src/build_dir/target-aarch64_cortex-a53_musl/go-1.14.3/pkg/linux_arm64/runtime/cgo.a(_x002.o): 
wm4.0.87d8ca21e8f70af1bffbb306e334e542<206>: sym#27: ignoring symbol in 
section 1 (type 0)
loadelf: 
/home/pclc/build-3.2/build/brcm2709/trunk/luci/RaspberryPi3/openwrt-src/build_dir/target-aarch64_cortex-a53_musl/go-1.14.3/pkg/linux_arm64/runtime/cgo.a(_x003.o): 
wm4.0.87d8ca21e8f70af1bffbb306e334e542<207>: sym#40: ignoring symbol in 
section 1 (type 0)
loadelf: 
/home/pclc/build-3.2/build/brcm2709/trunk/luci/RaspberryPi3/openwrt-src/build_dir/target-aarch64_cortex-a53_musl/go-1.14.3/pkg/linux_arm64/runtime/cgo.a(_x004.o): 
wm4.0.87d8ca21e8f70af1bffbb306e334e542<208>: sym#44: ignoring symbol in 
section 1 (type 0)
loadelf: 
/home/pclc/build-3.2/build/brcm2709/trunk/luci/RaspberryPi3/openwrt-src/build_dir/target-aarch64_cortex-a53_musl/go-1.14.3/pkg/linux_arm64/runtime/cgo.a(_x005.o): 
wm4.0.87d8ca21e8f70af1bffbb306e334e542<209>: sym#60: ignoring symbol in 
section 1 (type 0)
loadelf: 
/home/pclc/build-3.2/build/brcm2709/trunk/luci/RaspberryPi3/openwrt-src/build_dir/target-aarch64_cortex-a53_musl/go-1.14.3/pkg/linux_arm64/runtime/cgo.a(_x006.o): 
wm4.0.87d8ca21e8f70af1bffbb306e334e542<210>: sym#64: ignoring symbol in 
section 1 (type 0)
loadelf: 
/home/pclc/build-3.2/build/brcm2709/trunk/luci/RaspberryPi3/openwrt-src/build_dir/target-aarch64_cortex-a53_musl/go-1.14.3/pkg/linux_arm64/runtime/cgo.a(_x007.o): 
wm4.0.87d8ca21e8f70af1bffbb306e334e542<211>: sym#44: ignoring symbol in 
section 1 (type 0)
loadelf: 
/home/pclc/build-3.2/build/brcm2709/trunk/luci/RaspberryPi3/openwrt-src/build_dir/target-aarch64_cortex-a53_musl/go-1.14.3/pkg/linux_arm64/runtime/cgo.a(_x008.o): 
wm4.0.87d8ca21e8f70af1bffbb306e334e542<212>: sym#40: ignoring symbol in 
section 1 (type 0)
loadelf: 
/home/pclc/build-3.2/build/brcm2709/trunk/luci/RaspberryPi3/openwrt-src/build_dir/target-aarch64_cortex-a53_musl/go-1.14.3/pkg/linux_arm64/runtime/cgo.a(_x009.o): 
wm4.0.87d8ca21e8f70af1bffbb306e334e542<213>: sym#53: ignoring symbol in 
section 1 (type 0)
loadelf: 
/home/pclc/build-3.2/build/brcm2709/trunk/luci/RaspberryPi3/openwrt-src/build_dir/target-aarch64_cortex-a53_musl/go-1.14.3/pkg/linux_arm64/runtime/cgo.a(_x010.o): 
wm4.0.87d8ca21e8f70af1bffbb306e334e542<214>: sym#40: ignoring symbol in 
section 1 (type 0)
loadelf: 
/home/pclc/build-3.2/build/brcm2709/trunk/luci/RaspberryPi3/openwrt-src/build_dir/target-aarch64_cortex-a53_musl/go-1.14.3/pkg/linux_arm64/runtime/cgo.a(_x011.o): 
wm4.0.87d8ca21e8f70af1bffbb306e334e542<215>: sym#43: ignoring symbol in 
section 1 (type 0)
_cgo_init: relocation target x_cgo_init not defined
_cgo_mmap: relocation target x_cgo_mmap not defined
_cgo_munmap: relocation target x_cgo_munmap not defined
_cgo_notify_runtime_init_done: relocation target 
x_cgo_notify_runtime_init_done not defined
_cgo_sigaction: relocation target x_cgo_sigaction not defined
/home/pclc/build-3.2/build/brcm2709/trunk/luci/RaspberryPi3/openwrt-src/build_dir/target-aarch64_cortex-a53_musl/go-1.14.3/pkg/tool/linux_amd64/link: 
too many errors
make[4]: *** [Makefile:389: 
/home/pclc/build-3.2/build/brcm2709/trunk/luci/RaspberryPi3/openwrt-src/build_dir/target-aarch64_cortex-a53_musl/go-1.14.3/.built] 
Error 2
make[4]: Leaving directory 
'/home/pclc/build-3.2/build/brcm2709/trunk/luci/RaspberryPi3/openwrt-src/feeds/packages/lang/golang/golang'
time: package/feeds/packages/golang/compile#842.32#58.37#275.67
make[3]: *** [package/Makefile:113: 
package/feeds/packages/golang/compile] Error 2
make[3]: Leaving directory 
'/home/pclc/build-3.2/build/brcm2709/trunk/luci/RaspberryPi3/openwrt-src'
make[2]: *** [package/Makefile:107: 
/home/pclc/build-3.2/build/brcm2709/trunk/luci/RaspberryPi3/openwrt-src/staging_dir/target-aarch64_cortex-a53_musl/stamp/.package_compile] 
Error 2
make[2]: Leaving directory 
'/home/pclc/build-3.2/build/brcm2709/trunk/luci/RaspberryPi3/openwrt-src'
make[1]: *** 
[/home/pclc/build-3.2/build/brcm2709/trunk/luci/RaspberryPi3/openwrt-src/include/toplevel.mk:224: 
world] Error 2
make[1]: Leaving directory 
'/home/pclc/build-3.2/build/brcm2709/trunk/luci/RaspberryPi3/openwrt-src'
make: *** [Makefile:29: compile] Error 2


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
