Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B3C2E42084
	for <lists+openwrt-devel@lfdr.de>; Wed, 12 Jun 2019 11:17:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:
	References:Message-ID:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ITPDYGEpokImJVmEY3VFD5edit32+XhnaxHIJACEuHo=; b=HF7e1lnLxxx7Kp
	7GO1EIHQETQg8HeUqNZqefmrffMUHULXFbwwnNOnkfwVSIoYjNfTNMZeFRcyfLwdar3fSWBAzFaCS
	oEwUW5W+/mRgGjrhuoZlXGtvyW5lBrxpRAUJh4xi5wd1cEtsajA74vhCrwt2u8/Yzv8irMD+zFHn9
	HjKIceil6uRCwEcJZZzfLdaovb5mNKIb5r/hiUXkzQLCsTKAE7VXDKtxaOTwbDYPGAg+bxSYX/bwE
	NxM1sako/PVXEom/pp5rMInx9AItv2hdCx399ra0szfEicyOoWkDQF8WzJ2saPUKMBi5w+KawKvcv
	U1Zt3HbKyzgnkKs/fQEg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hazNe-0003lQ-AJ; Wed, 12 Jun 2019 09:17:18 +0000
Received: from 59-120-53-16.hinet-ip.hinet.net ([59.120.53.16]
 helo=ATCSQR.andestech.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hazLn-0002ap-60
 for openwrt-devel@lists.openwrt.org; Wed, 12 Jun 2019 09:15:27 +0000
Received: from mail.andestech.com (atcpcs16.andestech.com [10.0.1.222])
 by ATCSQR.andestech.com with ESMTP id x5C98Y1E057025;
 Wed, 12 Jun 2019 17:08:34 +0800 (GMT-8)
 (envelope-from nylon7@andestech.com)
Received: from app09 (10.0.15.117) by ATCPCS16.andestech.com (10.0.1.222) with
 Microsoft SMTP Server id 14.3.123.3; Wed, 12 Jun 2019 17:15:09 +0800
Date: Wed, 12 Jun 2019 17:10:24 +0800
From: Nylon Chen <nylon7@andestech.com>
To: Felix Fietkau <nbd@nbd.name>, <openwrt-devel@lists.openwrt.org>
Message-ID: <20190612091024.GA7889@app09>
References: <20190611103248.31917-1-nylon7@andestech.com>
 <c9185d51-b742-7637-c190-fede043e9b6f@nbd.name>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <c9185d51-b742-7637-c190-fede043e9b6f@nbd.name>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-Originating-IP: [10.0.15.117]
X-DNSRBL: 
X-MAIL: ATCSQR.andestech.com x5C98Y1E057025
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190612_021523_556704_C94D4545 
X-CRM114-Status: UNSURE (   7.55  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 TVD_RCVD_IP            Message was received from an IP address
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.4 RDNS_DYNAMIC           Delivered to internal network by host with
 dynamic-looking rDNS
Subject: Re: [OpenWrt-Devel] [PATCH 4/4] package: fix "LTO" option resulted
 in building error
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
Cc: Nylon Chen <nylon7717@gmail.com>, Che-Wei Chuang <cnoize@andestech.com>,
 Greentime Hu <greentime@andestech.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

On Tue, Jun 11, 2019 at 11:21:45PM +0800, Felix Fietkau wrote:
> On 2019-06-11 12:32, Nylon Chen wrote:
> > When a building package has -flto option leads to building error
> > 
> > We must use the gcc-ar wrapper instead of ar to invoke ar with the right
> > plugin arguments for handling the LTO objects when -flto is specified.
> > 
> > Signed-off-by: Che-Wei Chuang <cnoize@andestech.com>
> > Signed-off-by: Nylon Chen <nylon7@andestech.com>
> Why is this nds32 specific?
Not only nds32
> Does it not make sense to extend this to all targets?
I am not sure, but I am trying the others toolchain

x86-gcc
gcc version 7.4.0 (Ubuntu 7.4.0-1ubuntu1~18.04)
cc -flto -c f1.c
cc -flto -c f2.c
ar -r f.a f1.o f2.o
ar: creating f.a
rm -rf *.o *.a

gcc version 5.4.0 20160609 (Ubuntu 5.4.0-6ubuntu1~16.04.11)
cc -flto -c f1.c
cc -flto -c f2.c
ar -r f.a f1.o f2.o
ar: creating f.a
ar: f1.o: plugin needed to handle lto object
ar: f2.o: plugin needed to handle lto object
rm -rf *.o *.a

riscv
riscv64-linux-gcc -flto -c f1.c
riscv64-linux-gcc -flto -c f2.c
riscv64-linux-ar -r f.a f1.o f2.o
riscv64-linux-ar: creating f.a
rm -rf *.o *.a

nds32
nds32le-linux-gcc -flto -c f1.c
nds32le-linux-gcc -flto -c f2.c
nds32le-linux-ar -r f.a f1.o f2.o
nds32le-linux-ar: creating f.a
nds32le-linux-ar: f1.o: plugin needed to handle lto object
nds32le-linux-ar: f2.o: plugin needed to handle lto object
nds32le-linux-gcc-ar -r f.a f1.o f2.o
nds32le-linux-glibc-v3-upstream/bin/../lib/gcc/nds32le-linux/8.0.1/../../../../nds32le-linux/bin/ar: creating f.a
rm -rf *.o *.a

arm
arm-none-eabi-gcc -flto -c f1.c
arm-none-eabi-gcc -flto -c f2.c
arm-none-eabi-ar -r f.a f1.o f2.o
arm-none-eabi-ar: creating f.a
arm-none-eabi-ar: f1.o: plugin needed to handle lto object
arm-none-eabi-ar: f2.o: plugin needed to handle lto object
arm-none-eabi-gcc-ar -r f.a f1.o f2.o
gcc-arm-none-eabi-8-2018-q4-major/bin/../lib/gcc/arm-none-eabi/8.2.1/../../../../arm-none-eabi/bin/ar: creating f.a
rm -rf *.o *.a

summary
1.the same issue could be found in other vendors' toolchain
2.pass on newer than x86-gcc5.4 version
3.specificed -ffat-lto-objects during building toolchain could be solved
> 
> - Felix

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
