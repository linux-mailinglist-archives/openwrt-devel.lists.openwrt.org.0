Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6CF9C1DF008
	for <lists+openwrt-devel@lfdr.de>; Fri, 22 May 2020 21:32:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:In-Reply-To:Mime-Version:Date:Message-ID:From:References:To:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=4eXytcbBuQw5ZnrYvBMNljmrlp055J3CR1nrJ+Q2jLs=; b=Y0CsLXfIKWgIwKGpDhG9u7148
	RBxWMNCbdo1VGm5NgXZJplk7wKZHP4W3+fEuOPjhfuXPRMbLe1/QhPu8+nIM4X+FazvRY/GtT12Me
	ePrE1ABP7yKMbtykOiCel0YpzlOU39iskQETHGFcztAqS1xhhZastQu66TwDdz+nYTdQGwxfN92Gh
	F4B5mzcfM11qgFlHCS9jV6whlg8M3z2M8LGkt6BjV94fS3+vwxyz96BhqaCCFetvVcJv+YxUqA3lh
	K8xuN6m8fn3ir0qJvl3Jg1vKt0QXHbhApmsX/NnxtdHIVqEKJE21we3N8tnIQZMEXCOQw2xvcREsz
	ZPc53PjWQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jcDOw-0006NJ-GX; Fri, 22 May 2020 19:32:14 +0000
Received: from [2a01:4f8:1c0c:7572:2000:242:ac1a:6] (helo=mail.couprie.net)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jcDOm-0006Mi-QC
 for openwrt-devel@lists.openwrt.org; Fri, 22 May 2020 19:32:08 +0000
X-Virus-Scanned: Yes
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=couprie.net; s=mail;
 t=1590175919; bh=Tklv4n7AB4PpCJ34nadf1sB3GnRIAA2CoZ2nCY2GHok=;
 h=Subject:To:References:From:Cc:In-Reply-To;
 b=QTY3UWd0Ob+xOkI9hpoxH1Ej2AKGQ0YyKx/Pbas9IF+GI9S4ReQ8rwHftSy5QmD3p
 X57oGhVeY9Wqpygjg+ZP/W2id0SWtbfdkSWTnbOmh9tTt+/92nI4AAjrPzQhAVn2/j
 Ql0RlhOmlMQiwJW6QaYoUMchHkWjS+hQA1zrFqu8KbwXHC4EmbYYqkyrUcoe8SkBmE
 NqAvZD5TBCiFG350DcRckqBVxvElIlvzdeVeFUoo53Iz3W+cIUXpjy3iSqIOF+NHiJ
 4vIC+36cxWAqJPD2X+dkUYIS3uY+n4Exmd5zdZl+ymmjawtPOFkP34raphAJk8UJpX
 XT+m+wQsIqJaA==
To: openwrt-devel@lists.openwrt.org
References: <af916f8c-1c57-c098-7dc1-68cc7e10db8e@couprie.net>
 <CAJXyS=itKfw=dtS-ewaq4OyVMHsTrMheRTuPxzAqGyy4Gpy6bw@mail.gmail.com>
From: Perry Couprie <perry@couprie.net>
Message-ID: <ee52fbaa-daf1-2ebb-ee10-098c3f8bed49@couprie.net>
Date: Fri, 22 May 2020 21:31:59 +0200
Mime-Version: 1.0
In-Reply-To: <CAJXyS=itKfw=dtS-ewaq4OyVMHsTrMheRTuPxzAqGyy4Gpy6bw@mail.gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200522_123205_329775_13348E16 
X-CRM114-Status: UNSURE (   2.56  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 1.1 (+)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (1.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 T_SPF_PERMERROR        SPF: test of record failed (permerror)
 0.0 HTML_MESSAGE           BODY: HTML included in message
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 1.3 RDNS_NONE Delivered to internal network by a host with no rDNS
Subject: Re: [OpenWrt-Devel] Compile error compiling golang for Raspberri
 Pi3 image.
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
Cc: jeffery.to@gmail.com
Content-Type: multipart/mixed; boundary="===============1653170568218801836=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is a multi-part message in MIME format.
--===============1653170568218801836==
Content-Type: multipart/alternative;
 boundary="------------89480B58B30FAC2571222B32"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------89480B58B30FAC2571222B32
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit

Hi Jeff,

I am using the latest openwrt trunk. I compiled it on the latest Ubuntu 
20.04 x86_64.

Today i did a checkout of the latest openwrt trunk en recompiled it again.

When compiling openwrt for Raspberri PI3 i only selected package golang.

With as result the same compile error:

Perry

go-gcc-helper: running aarch64-openwrt-linux-musl-gcc -I 
../src/os/signal/internal/pty -fPIC -pthread -fmessage-length=0 
-fdebug-prefix-map=/home/pclc/build-3.2/build/brcm2709/trunk/luci/RaspberryPi3/openwrt-src/tmp/go-build494581984/b192=/tmp/go-build 
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
-Wl,-z,now -Wl,-z,relro -o $WORK/b192/_x002.o -c pty.cgo2.c
# os/signal/internal/pty
go-gcc-helper: running aarch64-openwrt-linux-musl-gcc -I 
../src/os/signal/internal/pty -fPIC -pthread -fmessage-length=0 
-fdebug-prefix-map=/home/pclc/build-3.2/build/brcm2709/trunk/luci/RaspberryPi3/openwrt-src/tmp/go-build494581984/b192=/tmp/go-build 
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
time: package/feeds/packages/golang/compile#842.27#58.27#273.58
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


On 22-05-2020 10:50, Jeffery To wrote:
> (resending as I forgot to CC the list, sigh)
>
> Hi Perry,
>
> On Fri, May 22, 2020 at 6:18 AM Perry Couprie <perry@couprie.net 
> <mailto:perry@couprie.net>> wrote:
>
>     I am trying to compile openwrt for Raspberri PI3.
>
>     On of the selected packages to compile in the firmware is GOLANG.
>
>     When compiling golang i get the following compile error.
>
>     What can i do to get it to compile ?
>
>
> Can you describe your build system (OS, version, etc.)? Also, I am 
> assuming you are building using OpenWrt master? Can you do a clean 
> checkout of master and try the build again?
>
> Jeff
>
>
> _______________________________________________
> openwrt-devel mailing list
> openwrt-devel@lists.openwrt.org
> https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--------------89480B58B30FAC2571222B32
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  </head>
  <body>
    <p>Hi Jeff,</p>
    <p>I am using the latest openwrt trunk. I compiled it on the latest
      Ubuntu 20.04 x86_64.</p>
    <p>Today i did a checkout of the latest openwrt trunk en recompiled
      it again.</p>
    <p>When compiling openwrt for Raspberri PI3 i only selected package
      golang.</p>
    <p>With as result the same compile error:<br>
    </p>
    <p>Perry</p>
    <p>go-gcc-helper: running aarch64-openwrt-linux-musl-gcc -I
      ../src/os/signal/internal/pty -fPIC -pthread -fmessage-length=0
-fdebug-prefix-map=/home/pclc/build-3.2/build/brcm2709/trunk/luci/RaspberryPi3/openwrt-src/tmp/go-build494581984/b192=/tmp/go-build
      -gno-record-gcc-switches
-I/home/pclc/build-3.2/build/brcm2709/trunk/luci/RaspberryPi3/openwrt-src/staging_dir/target-aarch64_cortex-a53_musl/usr/include
-I/home/pclc/build-3.2/build/brcm2709/trunk/luci/RaspberryPi3/openwrt-src/staging_dir/toolchain-aarch64_cortex-a53_gcc-8.4.0_musl/usr/include
-I/home/pclc/build-3.2/build/brcm2709/trunk/luci/RaspberryPi3/openwrt-src/staging_dir/toolchain-aarch64_cortex-a53_gcc-8.4.0_musl/include/fortify
-I/home/pclc/build-3.2/build/brcm2709/trunk/luci/RaspberryPi3/openwrt-src/staging_dir/toolchain-aarch64_cortex-a53_gcc-8.4.0_musl/include
      -I $WORK/b192/ -Os -pipe -mcpu=cortex-a53 -g3 -fno-caller-saves
      -fno-plt -fhonour-copts -Wno-error=unused-but-set-variable
      -Wno-error=unused-result
-ffile-prefix-map=/home/pclc/build-3.2/build/brcm2709/trunk/luci/RaspberryPi3/openwrt-src/build_dir/target-aarch64_cortex-a53_musl/go-1.14.3=go-1.14.3
      -Wformat -Werror=format-security -fstack-protector
      -D_FORTIFY_SOURCE=1 -Wl,-z,now -Wl,-z,relro -o $WORK/b192/_x002.o
      -c pty.cgo2.c<br>
      # os/signal/internal/pty<br>
      go-gcc-helper: running aarch64-openwrt-linux-musl-gcc -I
      ../src/os/signal/internal/pty -fPIC -pthread -fmessage-length=0
-fdebug-prefix-map=/home/pclc/build-3.2/build/brcm2709/trunk/luci/RaspberryPi3/openwrt-src/tmp/go-build494581984/b192=/tmp/go-build
      -gno-record-gcc-switches
-I/home/pclc/build-3.2/build/brcm2709/trunk/luci/RaspberryPi3/openwrt-src/staging_dir/target-aarch64_cortex-a53_musl/usr/include
-I/home/pclc/build-3.2/build/brcm2709/trunk/luci/RaspberryPi3/openwrt-src/staging_dir/toolchain-aarch64_cortex-a53_gcc-8.4.0_musl/usr/include
-I/home/pclc/build-3.2/build/brcm2709/trunk/luci/RaspberryPi3/openwrt-src/staging_dir/toolchain-aarch64_cortex-a53_gcc-8.4.0_musl/include/fortify
-I/home/pclc/build-3.2/build/brcm2709/trunk/luci/RaspberryPi3/openwrt-src/staging_dir/toolchain-aarch64_cortex-a53_gcc-8.4.0_musl/include
      -I $WORK/b192/ -Os -pipe -mcpu=cortex-a53 -g3 -fno-caller-saves
      -fno-plt -fhonour-copts -Wno-error=unused-but-set-variable
      -Wno-error=unused-result
-ffile-prefix-map=/home/pclc/build-3.2/build/brcm2709/trunk/luci/RaspberryPi3/openwrt-src/build_dir/target-aarch64_cortex-a53_musl/go-1.14.3=go-1.14.3
      -Wformat -Werror=format-security -fstack-protector
      -D_FORTIFY_SOURCE=1 -Wl,-z,now -Wl,-z,relro -o
      $WORK/b192/_cgo_main.o -c _cgo_main.c<br>
      # cmd/go<br>
      loadelf:
/home/pclc/build-3.2/build/brcm2709/trunk/luci/RaspberryPi3/openwrt-src/build_dir/target-aarch64_cortex-a53_musl/go-1.14.3/pkg/linux_arm64/net.a(_x001.o):
      wm4.0.87d8ca21e8f70af1bffbb306e334e542&lt;239&gt;: sym#29:
      ignoring symbol in section 1 (type 0)<br>
      loadelf:
/home/pclc/build-3.2/build/brcm2709/trunk/luci/RaspberryPi3/openwrt-src/build_dir/target-aarch64_cortex-a53_musl/go-1.14.3/pkg/linux_arm64/net.a(_x002.o):
      wm4.0.87d8ca21e8f70af1bffbb306e334e542&lt;240&gt;: sym#40:
      ignoring symbol in section 1 (type 0)<br>
      loadelf:
/home/pclc/build-3.2/build/brcm2709/trunk/luci/RaspberryPi3/openwrt-src/build_dir/target-aarch64_cortex-a53_musl/go-1.14.3/pkg/linux_arm64/net.a(_x003.o):
      wm4.0.87d8ca21e8f70af1bffbb306e334e542&lt;241&gt;: sym#52:
      ignoring symbol in section 1 (type 0)<br>
      loadelf:
/home/pclc/build-3.2/build/brcm2709/trunk/luci/RaspberryPi3/openwrt-src/build_dir/target-aarch64_cortex-a53_musl/go-1.14.3/pkg/linux_arm64/net.a(_x004.o):
      wm4.0.87d8ca21e8f70af1bffbb306e334e542&lt;242&gt;: sym#47:
      ignoring symbol in section 1 (type 0)<br>
      loadelf:
/home/pclc/build-3.2/build/brcm2709/trunk/luci/RaspberryPi3/openwrt-src/build_dir/target-aarch64_cortex-a53_musl/go-1.14.3/pkg/linux_arm64/net.a(_x005.o):
      wm4.0.87d8ca21e8f70af1bffbb306e334e542&lt;243&gt;: sym#58:
      ignoring symbol in section 1 (type 0)<br>
      loadelf:
/home/pclc/build-3.2/build/brcm2709/trunk/luci/RaspberryPi3/openwrt-src/build_dir/target-aarch64_cortex-a53_musl/go-1.14.3/pkg/linux_arm64/runtime/cgo.a(_x001.o):
      wm4.0.87d8ca21e8f70af1bffbb306e334e542&lt;244&gt;: sym#29:
      ignoring symbol in section 1 (type 0)<br>
      loadelf:
/home/pclc/build-3.2/build/brcm2709/trunk/luci/RaspberryPi3/openwrt-src/build_dir/target-aarch64_cortex-a53_musl/go-1.14.3/pkg/linux_arm64/runtime/cgo.a(_x002.o):
      wm4.0.87d8ca21e8f70af1bffbb306e334e542&lt;245&gt;: sym#27:
      ignoring symbol in section 1 (type 0)<br>
      loadelf:
/home/pclc/build-3.2/build/brcm2709/trunk/luci/RaspberryPi3/openwrt-src/build_dir/target-aarch64_cortex-a53_musl/go-1.14.3/pkg/linux_arm64/runtime/cgo.a(_x003.o):
      wm4.0.87d8ca21e8f70af1bffbb306e334e542&lt;246&gt;: sym#40:
      ignoring symbol in section 1 (type 0)<br>
      loadelf:
/home/pclc/build-3.2/build/brcm2709/trunk/luci/RaspberryPi3/openwrt-src/build_dir/target-aarch64_cortex-a53_musl/go-1.14.3/pkg/linux_arm64/runtime/cgo.a(_x004.o):
      wm4.0.87d8ca21e8f70af1bffbb306e334e542&lt;247&gt;: sym#44:
      ignoring symbol in section 1 (type 0)<br>
      loadelf:
/home/pclc/build-3.2/build/brcm2709/trunk/luci/RaspberryPi3/openwrt-src/build_dir/target-aarch64_cortex-a53_musl/go-1.14.3/pkg/linux_arm64/runtime/cgo.a(_x005.o):
      wm4.0.87d8ca21e8f70af1bffbb306e334e542&lt;248&gt;: sym#60:
      ignoring symbol in section 1 (type 0)<br>
      loadelf:
/home/pclc/build-3.2/build/brcm2709/trunk/luci/RaspberryPi3/openwrt-src/build_dir/target-aarch64_cortex-a53_musl/go-1.14.3/pkg/linux_arm64/runtime/cgo.a(_x006.o):
      wm4.0.87d8ca21e8f70af1bffbb306e334e542&lt;249&gt;: sym#64:
      ignoring symbol in section 1 (type 0)<br>
      loadelf:
/home/pclc/build-3.2/build/brcm2709/trunk/luci/RaspberryPi3/openwrt-src/build_dir/target-aarch64_cortex-a53_musl/go-1.14.3/pkg/linux_arm64/runtime/cgo.a(_x007.o):
      wm4.0.87d8ca21e8f70af1bffbb306e334e542&lt;250&gt;: sym#44:
      ignoring symbol in section 1 (type 0)<br>
      loadelf:
/home/pclc/build-3.2/build/brcm2709/trunk/luci/RaspberryPi3/openwrt-src/build_dir/target-aarch64_cortex-a53_musl/go-1.14.3/pkg/linux_arm64/runtime/cgo.a(_x008.o):
      wm4.0.87d8ca21e8f70af1bffbb306e334e542&lt;251&gt;: sym#40:
      ignoring symbol in section 1 (type 0)<br>
      loadelf:
/home/pclc/build-3.2/build/brcm2709/trunk/luci/RaspberryPi3/openwrt-src/build_dir/target-aarch64_cortex-a53_musl/go-1.14.3/pkg/linux_arm64/runtime/cgo.a(_x009.o):
      wm4.0.87d8ca21e8f70af1bffbb306e334e542&lt;252&gt;: sym#53:
      ignoring symbol in section 1 (type 0)<br>
      loadelf:
/home/pclc/build-3.2/build/brcm2709/trunk/luci/RaspberryPi3/openwrt-src/build_dir/target-aarch64_cortex-a53_musl/go-1.14.3/pkg/linux_arm64/runtime/cgo.a(_x010.o):
      wm4.0.87d8ca21e8f70af1bffbb306e334e542&lt;253&gt;: sym#40:
      ignoring symbol in section 1 (type 0)<br>
      loadelf:
/home/pclc/build-3.2/build/brcm2709/trunk/luci/RaspberryPi3/openwrt-src/build_dir/target-aarch64_cortex-a53_musl/go-1.14.3/pkg/linux_arm64/runtime/cgo.a(_x011.o):
      wm4.0.87d8ca21e8f70af1bffbb306e334e542&lt;254&gt;: sym#43:
      ignoring symbol in section 1 (type 0)<br>
      _cgo_init: relocation target x_cgo_init not defined<br>
      _cgo_mmap: relocation target x_cgo_mmap not defined<br>
      _cgo_munmap: relocation target x_cgo_munmap not defined<br>
      _cgo_notify_runtime_init_done: relocation target
      x_cgo_notify_runtime_init_done not defined<br>
      _cgo_sigaction: relocation target x_cgo_sigaction not defined<br>
/home/pclc/build-3.2/build/brcm2709/trunk/luci/RaspberryPi3/openwrt-src/build_dir/target-aarch64_cortex-a53_musl/go-1.14.3/pkg/tool/linux_amd64/link:
      too many errors<br>
      # cmd/trace<br>
      loadelf:
/home/pclc/build-3.2/build/brcm2709/trunk/luci/RaspberryPi3/openwrt-src/build_dir/target-aarch64_cortex-a53_musl/go-1.14.3/pkg/linux_arm64/net.a(_x001.o):
      wm4.0.87d8ca21e8f70af1bffbb306e334e542&lt;170&gt;: sym#29:
      ignoring symbol in section 1 (type 0)<br>
      loadelf:
/home/pclc/build-3.2/build/brcm2709/trunk/luci/RaspberryPi3/openwrt-src/build_dir/target-aarch64_cortex-a53_musl/go-1.14.3/pkg/linux_arm64/net.a(_x002.o):
      wm4.0.87d8ca21e8f70af1bffbb306e334e542&lt;171&gt;: sym#40:
      ignoring symbol in section 1 (type 0)<br>
      loadelf:
/home/pclc/build-3.2/build/brcm2709/trunk/luci/RaspberryPi3/openwrt-src/build_dir/target-aarch64_cortex-a53_musl/go-1.14.3/pkg/linux_arm64/net.a(_x003.o):
      wm4.0.87d8ca21e8f70af1bffbb306e334e542&lt;172&gt;: sym#52:
      ignoring symbol in section 1 (type 0)<br>
      loadelf:
/home/pclc/build-3.2/build/brcm2709/trunk/luci/RaspberryPi3/openwrt-src/build_dir/target-aarch64_cortex-a53_musl/go-1.14.3/pkg/linux_arm64/net.a(_x004.o):
      wm4.0.87d8ca21e8f70af1bffbb306e334e542&lt;173&gt;: sym#47:
      ignoring symbol in section 1 (type 0)<br>
      loadelf:
/home/pclc/build-3.2/build/brcm2709/trunk/luci/RaspberryPi3/openwrt-src/build_dir/target-aarch64_cortex-a53_musl/go-1.14.3/pkg/linux_arm64/net.a(_x005.o):
      wm4.0.87d8ca21e8f70af1bffbb306e334e542&lt;174&gt;: sym#58:
      ignoring symbol in section 1 (type 0)<br>
      loadelf:
/home/pclc/build-3.2/build/brcm2709/trunk/luci/RaspberryPi3/openwrt-src/build_dir/target-aarch64_cortex-a53_musl/go-1.14.3/pkg/linux_arm64/runtime/cgo.a(_x001.o):
      wm4.0.87d8ca21e8f70af1bffbb306e334e542&lt;175&gt;: sym#29:
      ignoring symbol in section 1 (type 0)<br>
      loadelf:
/home/pclc/build-3.2/build/brcm2709/trunk/luci/RaspberryPi3/openwrt-src/build_dir/target-aarch64_cortex-a53_musl/go-1.14.3/pkg/linux_arm64/runtime/cgo.a(_x002.o):
      wm4.0.87d8ca21e8f70af1bffbb306e334e542&lt;176&gt;: sym#27:
      ignoring symbol in section 1 (type 0)<br>
      loadelf:
/home/pclc/build-3.2/build/brcm2709/trunk/luci/RaspberryPi3/openwrt-src/build_dir/target-aarch64_cortex-a53_musl/go-1.14.3/pkg/linux_arm64/runtime/cgo.a(_x003.o):
      wm4.0.87d8ca21e8f70af1bffbb306e334e542&lt;177&gt;: sym#40:
      ignoring symbol in section 1 (type 0)<br>
      loadelf:
/home/pclc/build-3.2/build/brcm2709/trunk/luci/RaspberryPi3/openwrt-src/build_dir/target-aarch64_cortex-a53_musl/go-1.14.3/pkg/linux_arm64/runtime/cgo.a(_x004.o):
      wm4.0.87d8ca21e8f70af1bffbb306e334e542&lt;178&gt;: sym#44:
      ignoring symbol in section 1 (type 0)<br>
      loadelf:
/home/pclc/build-3.2/build/brcm2709/trunk/luci/RaspberryPi3/openwrt-src/build_dir/target-aarch64_cortex-a53_musl/go-1.14.3/pkg/linux_arm64/runtime/cgo.a(_x005.o):
      wm4.0.87d8ca21e8f70af1bffbb306e334e542&lt;179&gt;: sym#60:
      ignoring symbol in section 1 (type 0)<br>
      loadelf:
/home/pclc/build-3.2/build/brcm2709/trunk/luci/RaspberryPi3/openwrt-src/build_dir/target-aarch64_cortex-a53_musl/go-1.14.3/pkg/linux_arm64/runtime/cgo.a(_x006.o):
      wm4.0.87d8ca21e8f70af1bffbb306e334e542&lt;180&gt;: sym#64:
      ignoring symbol in section 1 (type 0)<br>
      loadelf:
/home/pclc/build-3.2/build/brcm2709/trunk/luci/RaspberryPi3/openwrt-src/build_dir/target-aarch64_cortex-a53_musl/go-1.14.3/pkg/linux_arm64/runtime/cgo.a(_x007.o):
      wm4.0.87d8ca21e8f70af1bffbb306e334e542&lt;181&gt;: sym#44:
      ignoring symbol in section 1 (type 0)<br>
      loadelf:
/home/pclc/build-3.2/build/brcm2709/trunk/luci/RaspberryPi3/openwrt-src/build_dir/target-aarch64_cortex-a53_musl/go-1.14.3/pkg/linux_arm64/runtime/cgo.a(_x008.o):
      wm4.0.87d8ca21e8f70af1bffbb306e334e542&lt;182&gt;: sym#40:
      ignoring symbol in section 1 (type 0)<br>
      loadelf:
/home/pclc/build-3.2/build/brcm2709/trunk/luci/RaspberryPi3/openwrt-src/build_dir/target-aarch64_cortex-a53_musl/go-1.14.3/pkg/linux_arm64/runtime/cgo.a(_x009.o):
      wm4.0.87d8ca21e8f70af1bffbb306e334e542&lt;183&gt;: sym#53:
      ignoring symbol in section 1 (type 0)<br>
      loadelf:
/home/pclc/build-3.2/build/brcm2709/trunk/luci/RaspberryPi3/openwrt-src/build_dir/target-aarch64_cortex-a53_musl/go-1.14.3/pkg/linux_arm64/runtime/cgo.a(_x010.o):
      wm4.0.87d8ca21e8f70af1bffbb306e334e542&lt;184&gt;: sym#40:
      ignoring symbol in section 1 (type 0)<br>
      loadelf:
/home/pclc/build-3.2/build/brcm2709/trunk/luci/RaspberryPi3/openwrt-src/build_dir/target-aarch64_cortex-a53_musl/go-1.14.3/pkg/linux_arm64/runtime/cgo.a(_x011.o):
      wm4.0.87d8ca21e8f70af1bffbb306e334e542&lt;185&gt;: sym#43:
      ignoring symbol in section 1 (type 0)<br>
      _cgo_init: relocation target x_cgo_init not defined<br>
      _cgo_mmap: relocation target x_cgo_mmap not defined<br>
      _cgo_munmap: relocation target x_cgo_munmap not defined<br>
      _cgo_notify_runtime_init_done: relocation target
      x_cgo_notify_runtime_init_done not defined<br>
      _cgo_sigaction: relocation target x_cgo_sigaction not defined<br>
/home/pclc/build-3.2/build/brcm2709/trunk/luci/RaspberryPi3/openwrt-src/build_dir/target-aarch64_cortex-a53_musl/go-1.14.3/pkg/tool/linux_amd64/link:
      too many errors<br>
      # cmd/pprof<br>
      loadelf:
/home/pclc/build-3.2/build/brcm2709/trunk/luci/RaspberryPi3/openwrt-src/build_dir/target-aarch64_cortex-a53_musl/go-1.14.3/pkg/linux_arm64/net.a(_x001.o):
      wm4.0.87d8ca21e8f70af1bffbb306e334e542&lt;200&gt;: sym#29:
      ignoring symbol in section 1 (type 0)<br>
      loadelf:
/home/pclc/build-3.2/build/brcm2709/trunk/luci/RaspberryPi3/openwrt-src/build_dir/target-aarch64_cortex-a53_musl/go-1.14.3/pkg/linux_arm64/net.a(_x002.o):
      wm4.0.87d8ca21e8f70af1bffbb306e334e542&lt;201&gt;: sym#40:
      ignoring symbol in section 1 (type 0)<br>
      loadelf:
/home/pclc/build-3.2/build/brcm2709/trunk/luci/RaspberryPi3/openwrt-src/build_dir/target-aarch64_cortex-a53_musl/go-1.14.3/pkg/linux_arm64/net.a(_x003.o):
      wm4.0.87d8ca21e8f70af1bffbb306e334e542&lt;202&gt;: sym#52:
      ignoring symbol in section 1 (type 0)<br>
      loadelf:
/home/pclc/build-3.2/build/brcm2709/trunk/luci/RaspberryPi3/openwrt-src/build_dir/target-aarch64_cortex-a53_musl/go-1.14.3/pkg/linux_arm64/net.a(_x004.o):
      wm4.0.87d8ca21e8f70af1bffbb306e334e542&lt;203&gt;: sym#47:
      ignoring symbol in section 1 (type 0)<br>
      loadelf:
/home/pclc/build-3.2/build/brcm2709/trunk/luci/RaspberryPi3/openwrt-src/build_dir/target-aarch64_cortex-a53_musl/go-1.14.3/pkg/linux_arm64/net.a(_x005.o):
      wm4.0.87d8ca21e8f70af1bffbb306e334e542&lt;204&gt;: sym#58:
      ignoring symbol in section 1 (type 0)<br>
      loadelf:
/home/pclc/build-3.2/build/brcm2709/trunk/luci/RaspberryPi3/openwrt-src/build_dir/target-aarch64_cortex-a53_musl/go-1.14.3/pkg/linux_arm64/runtime/cgo.a(_x001.o):
      wm4.0.87d8ca21e8f70af1bffbb306e334e542&lt;205&gt;: sym#29:
      ignoring symbol in section 1 (type 0)<br>
      loadelf:
/home/pclc/build-3.2/build/brcm2709/trunk/luci/RaspberryPi3/openwrt-src/build_dir/target-aarch64_cortex-a53_musl/go-1.14.3/pkg/linux_arm64/runtime/cgo.a(_x002.o):
      wm4.0.87d8ca21e8f70af1bffbb306e334e542&lt;206&gt;: sym#27:
      ignoring symbol in section 1 (type 0)<br>
      loadelf:
/home/pclc/build-3.2/build/brcm2709/trunk/luci/RaspberryPi3/openwrt-src/build_dir/target-aarch64_cortex-a53_musl/go-1.14.3/pkg/linux_arm64/runtime/cgo.a(_x003.o):
      wm4.0.87d8ca21e8f70af1bffbb306e334e542&lt;207&gt;: sym#40:
      ignoring symbol in section 1 (type 0)<br>
      loadelf:
/home/pclc/build-3.2/build/brcm2709/trunk/luci/RaspberryPi3/openwrt-src/build_dir/target-aarch64_cortex-a53_musl/go-1.14.3/pkg/linux_arm64/runtime/cgo.a(_x004.o):
      wm4.0.87d8ca21e8f70af1bffbb306e334e542&lt;208&gt;: sym#44:
      ignoring symbol in section 1 (type 0)<br>
      loadelf:
/home/pclc/build-3.2/build/brcm2709/trunk/luci/RaspberryPi3/openwrt-src/build_dir/target-aarch64_cortex-a53_musl/go-1.14.3/pkg/linux_arm64/runtime/cgo.a(_x005.o):
      wm4.0.87d8ca21e8f70af1bffbb306e334e542&lt;209&gt;: sym#60:
      ignoring symbol in section 1 (type 0)<br>
      loadelf:
/home/pclc/build-3.2/build/brcm2709/trunk/luci/RaspberryPi3/openwrt-src/build_dir/target-aarch64_cortex-a53_musl/go-1.14.3/pkg/linux_arm64/runtime/cgo.a(_x006.o):
      wm4.0.87d8ca21e8f70af1bffbb306e334e542&lt;210&gt;: sym#64:
      ignoring symbol in section 1 (type 0)<br>
      loadelf:
/home/pclc/build-3.2/build/brcm2709/trunk/luci/RaspberryPi3/openwrt-src/build_dir/target-aarch64_cortex-a53_musl/go-1.14.3/pkg/linux_arm64/runtime/cgo.a(_x007.o):
      wm4.0.87d8ca21e8f70af1bffbb306e334e542&lt;211&gt;: sym#44:
      ignoring symbol in section 1 (type 0)<br>
      loadelf:
/home/pclc/build-3.2/build/brcm2709/trunk/luci/RaspberryPi3/openwrt-src/build_dir/target-aarch64_cortex-a53_musl/go-1.14.3/pkg/linux_arm64/runtime/cgo.a(_x008.o):
      wm4.0.87d8ca21e8f70af1bffbb306e334e542&lt;212&gt;: sym#40:
      ignoring symbol in section 1 (type 0)<br>
      loadelf:
/home/pclc/build-3.2/build/brcm2709/trunk/luci/RaspberryPi3/openwrt-src/build_dir/target-aarch64_cortex-a53_musl/go-1.14.3/pkg/linux_arm64/runtime/cgo.a(_x009.o):
      wm4.0.87d8ca21e8f70af1bffbb306e334e542&lt;213&gt;: sym#53:
      ignoring symbol in section 1 (type 0)<br>
      loadelf:
/home/pclc/build-3.2/build/brcm2709/trunk/luci/RaspberryPi3/openwrt-src/build_dir/target-aarch64_cortex-a53_musl/go-1.14.3/pkg/linux_arm64/runtime/cgo.a(_x010.o):
      wm4.0.87d8ca21e8f70af1bffbb306e334e542&lt;214&gt;: sym#40:
      ignoring symbol in section 1 (type 0)<br>
      loadelf:
/home/pclc/build-3.2/build/brcm2709/trunk/luci/RaspberryPi3/openwrt-src/build_dir/target-aarch64_cortex-a53_musl/go-1.14.3/pkg/linux_arm64/runtime/cgo.a(_x011.o):
      wm4.0.87d8ca21e8f70af1bffbb306e334e542&lt;215&gt;: sym#43:
      ignoring symbol in section 1 (type 0)<br>
      _cgo_init: relocation target x_cgo_init not defined<br>
      _cgo_mmap: relocation target x_cgo_mmap not defined<br>
      _cgo_munmap: relocation target x_cgo_munmap not defined<br>
      _cgo_notify_runtime_init_done: relocation target
      x_cgo_notify_runtime_init_done not defined<br>
      _cgo_sigaction: relocation target x_cgo_sigaction not defined<br>
/home/pclc/build-3.2/build/brcm2709/trunk/luci/RaspberryPi3/openwrt-src/build_dir/target-aarch64_cortex-a53_musl/go-1.14.3/pkg/tool/linux_amd64/link:
      too many errors<br>
      make[4]: *** [Makefile:389:
/home/pclc/build-3.2/build/brcm2709/trunk/luci/RaspberryPi3/openwrt-src/build_dir/target-aarch64_cortex-a53_musl/go-1.14.3/.built]
      Error 2<br>
      make[4]: Leaving directory
'/home/pclc/build-3.2/build/brcm2709/trunk/luci/RaspberryPi3/openwrt-src/feeds/packages/lang/golang/golang'<br>
      time: package/feeds/packages/golang/compile#842.27#58.27#273.58<br>
      make[3]: *** [package/Makefile:113:
      package/feeds/packages/golang/compile] Error 2<br>
      make[3]: Leaving directory
'/home/pclc/build-3.2/build/brcm2709/trunk/luci/RaspberryPi3/openwrt-src'<br>
      make[2]: *** [package/Makefile:107:
/home/pclc/build-3.2/build/brcm2709/trunk/luci/RaspberryPi3/openwrt-src/staging_dir/target-aarch64_cortex-a53_musl/stamp/.package_compile]
      Error 2<br>
      make[2]: Leaving directory
'/home/pclc/build-3.2/build/brcm2709/trunk/luci/RaspberryPi3/openwrt-src'<br>
      make[1]: ***
[/home/pclc/build-3.2/build/brcm2709/trunk/luci/RaspberryPi3/openwrt-src/include/toplevel.mk:224:
      world] Error 2<br>
      make[1]: Leaving directory
'/home/pclc/build-3.2/build/brcm2709/trunk/luci/RaspberryPi3/openwrt-src'<br>
      make: *** [Makefile:29: compile] Error 2<br>
      <br>
    </p>
    <p><br>
    </p>
    <div class="moz-cite-prefix">On 22-05-2020 10:50, Jeffery To wrote:<br>
    </div>
    <blockquote type="cite"
cite="mid:CAJXyS=itKfw=dtS-ewaq4OyVMHsTrMheRTuPxzAqGyy4Gpy6bw@mail.gmail.com">
      <meta http-equiv="content-type" content="text/html; charset=UTF-8">
      <div dir="ltr">
        <div>(resending as I forgot to CC the list, sigh)</div>
        <div><br>
        </div>
        <div>Hi Perry,<br>
        </div>
        <br>
        <div class="gmail_quote">
          <div dir="ltr" class="gmail_attr">On Fri, May 22, 2020 at 6:18
            AM Perry Couprie &lt;<a href="mailto:perry@couprie.net"
              moz-do-not-send="true">perry@couprie.net</a>&gt; wrote:<br>
          </div>
          <blockquote class="gmail_quote" style="margin:0px 0px 0px
            0.8ex;border-left:1px solid
            rgb(204,204,204);padding-left:1ex">
            I am trying to compile openwrt for Raspberri PI3.<br>
            <br>
            On of the selected packages to compile in the firmware is
            GOLANG.<br>
            <br>
            When compiling golang i get the following compile error.<br>
            <br>
            What can i do to get it to compile ?<br>
          </blockquote>
          <div><br>
          </div>
          <div>Can you describe your build system (OS, version, etc.)?
            Also, I am assuming you are building using OpenWrt master?
            Can you do a clean checkout of master and try the build
            again? </div>
          <div><br>
          </div>
          <div>Jeff</div>
          <div><br>
          </div>
        </div>
      </div>
      <br>
      <fieldset class="mimeAttachmentHeader"></fieldset>
      <pre class="moz-quote-pre" wrap="">_______________________________________________
openwrt-devel mailing list
<a class="moz-txt-link-abbreviated" href="mailto:openwrt-devel@lists.openwrt.org">openwrt-devel@lists.openwrt.org</a>
<a class="moz-txt-link-freetext" href="https://lists.openwrt.org/mailman/listinfo/openwrt-devel">https://lists.openwrt.org/mailman/listinfo/openwrt-devel</a>
</pre>
    </blockquote>
  </body>
</html>

--------------89480B58B30FAC2571222B32--



--===============1653170568218801836==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============1653170568218801836==--


