Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 20D591F3F0D
	for <lists+openwrt-devel@lfdr.de>; Tue,  9 Jun 2020 17:19:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:MIME-Version:Date:Message-ID:From:To:
	Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=/3hXxqdXNBLy/J6hQ6nIzF3xSNy3swe+4FvCmXC6jeQ=; b=danj4RcQFs2q7P
	TB3908xlhCb3gSubqOrf6Rnlm65b8Df2bw8hXwbInsFO3N7sqd3EBK76hqf94kfPZ3Dw31AcfNhY7
	OTsIkO5TrJ7j9r246ucwKkFKYhx5jw5yRHXQZWl1YiUK0pG5hDC6OCCiJvK0SQvE5MFu6+UlCvRpV
	NmaEoGGJoBOWuvkdRTLfYylXyHgi7p4wYMfLuCKjG2/3qJurh62Kv2jc/+iaymndqgK5aRo4g5hlV
	EvERuGXCDJVnzey+XpANZmyydyPjRlaZFhme2NPZ3doPdU5cBeWgcLvXjsijD+NLcsXvl4wUoMrq3
	NUbNN4qvhu1+nhNOEtqw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jig1u-0003SM-Oe; Tue, 09 Jun 2020 15:19:10 +0000
Received: from vds2011x11.startdedicated.de ([62.138.18.229]
 helo=mail.softart-ge.com)
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jig1d-0003Rr-6M
 for openwrt-devel@lists.openwrt.org; Tue, 09 Jun 2020 15:18:54 +0000
Received: from localhost (localhost [127.0.0.1])
 by mail.softart-ge.com (Postfix) with ESMTP id 1A69CC060F
 for <openwrt-devel@lists.openwrt.org>; Tue,  9 Jun 2020 17:18:49 +0200 (CEST)
X-Virus-Scanned: Debian amavisd-new at softart-ge.com
Received: from mail.softart-ge.com ([127.0.0.1])
 by localhost (softart-ge.com [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Lxzkx5w8pVTC for <openwrt-devel@lists.openwrt.org>;
 Tue,  9 Jun 2020 17:18:46 +0200 (CEST)
Received: from [192.168.1.221] (ip-84-119-114-184.unity-media.net
 [84.119.114.184])
 by mail.softart-ge.com (Postfix) with ESMTPA id CFC53C0212
 for <openwrt-devel@lists.openwrt.org>; Tue,  9 Jun 2020 17:18:45 +0200 (CEST)
To: openwrt-devel@lists.openwrt.org
From: Reiner Karlsberg <karlsberg@softart-ge.com>
Message-ID: <11126f86-06ea-a03b-5eaf-716542dc3b25@softart-ge.com>
Date: Tue, 9 Jun 2020 17:18:42 +0200
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200609_081853_382045_17D75A08 
X-CRM114-Status: UNSURE (   3.83  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
Subject: [OpenWrt-Devel] Build error on latest trunk: LuaJIT
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

make -j1 -C /etc/openwrt/WE826/build_dir/target-mipsel_24kc_musl/LuaJIT-2.1.0-beta3 HOST_CC="gcc -O2 
-I/etc/openwrt/WE826_PCS3/staging_dir/host/include -I/etc/openwrt/WE826/staging_dir/hostpkg/include 
-I/etc/openwrt/WE826_PCS3/staging_dir/target-mipsel_24kc_musl/host/include -m32" CROSS="mipsel-openwrt-linux-musl-" 
DPREFIX=/etc/openwrt/WE826/build_dir/target-mipsel_24kc_musl/LuaJIT-2.1.0-beta3/ipkg-install/usr PREFIX=/usr 
TARGET_SYS=Linux TARGET_CFLAGS="-Os -pipe -mno-branch-likely -mips32r2 -mtune=24kc -fno-caller-saves -fno-plt 
-fhonour-copts -Wno-error=unused-but-set-variable -Wno-error=unused-result -msoft-float 
-ffile-prefix-map=/etc/openwrt/WE826_PCS3/build_dir/target-mipsel_24kc_musl/LuaJIT-2.1.0-beta3=LuaJIT-2.1.0-beta3 
-Wformat -Werror=format-security -fstack-protector -D_FORTIFY_SOURCE=1 -Wl,-z,now -Wl,-z,relro" BUILDMODE=dynamic
make[4]: Entering directory '/etc/openwrt/WE826/build_dir/target-mipsel_24kc_musl/LuaJIT-2.1.0-beta3'

==== Building LuaJIT 2.1.0-beta3 ====
make -C src
make[5]: Entering directory '/etc/openwrt/WE826/build_dir/target-mipsel_24kc_musl/LuaJIT-2.1.0-beta3/src'
HOSTCC    host/minilua.o
In file included from /usr/lib/gcc/x86_64-linux-gnu/9/include-fixed/limits.h:194,
                  from /usr/lib/gcc/x86_64-linux-gnu/9/include-fixed/syslimits.h:7,
                  from /usr/lib/gcc/x86_64-linux-gnu/9/include-fixed/limits.h:34,
                  from host/minilua.c:33:
/usr/include/limits.h:26:10: fatal error: bits/libc-header-start.h: No such file or directory
    26 | #include <bits/libc-header-start.h>
       |          ^~~~~~~~~~~~~~~~~~~~~~~~~~

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
