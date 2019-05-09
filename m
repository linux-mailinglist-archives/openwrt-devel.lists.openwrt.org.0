Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E3973187A0
	for <lists+openwrt-devel@lfdr.de>; Thu,  9 May 2019 11:23:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:Message-ID:
	From:References:To:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=EVRK1l6duYb6bFYB9gPs78s/xX8R0LI+AQV2aI+LArs=; b=MmZ0z5GysXa85SJUtbFX+N/rJ
	ncb21oBqNUV5Wlcie9KU7qpjBMJxdBq7ALjBvFwDr+eLZpbVIGjg+gh1lloyki/Sb0Enga+/E3nPK
	XJvJJgEPrtNYq81yJRa2TjmAhqAzzqDglGn5qz+VQnesCqNT3CRGWOsatR9MfPrrUNgz3sE1R3hfw
	G6W8t2qmhHOrnggfIjNJfsLGUJLNIyePwvBP2VqG5DvAd9jBOEJGxE5XESMy/RpIz2rl5yYbQxg5W
	8AlILJmBzWeNsM0Z0b/fcExSbIEp0DpV91742s3x82ERBi7vFLn5ij2dOqovfjsnntiTPdffMrKur
	XUCDBkQFg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hOfH4-0002pL-Kk; Thu, 09 May 2019 09:23:34 +0000
Received: from mx.allycomm.com ([138.68.30.55])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hOfGu-0002p0-IS
 for openwrt-devel@lists.openwrt.org; Thu, 09 May 2019 09:23:25 +0000
Received: from JKLETSKY-MBP15.local (92.40.249.42.threembb.co.uk
 [92.40.249.42])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mx.allycomm.com (Postfix) with ESMTPSA id 0835E3D475;
 Thu,  9 May 2019 02:23:21 -0700 (PDT)
To: Robert Marko <robimarko@gmail.com>
References: <4dfc32e2-d65b-5a93-f04e-91d80d94bf50@allycomm.com>
 <CAOX2RU4Ae_GRq+_P1RGt0=BgnodSfoT_uHkjZxTwsf5mPobLgg@mail.gmail.com>
From: Jeff Kletsky <lede@allycomm.com>
Message-ID: <5a135cb6-bb49-ee37-a4d4-85911fc9b667@allycomm.com>
Date: Thu, 9 May 2019 11:23:18 +0200
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.14; rv:60.0)
 Gecko/20100101 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <CAOX2RU4Ae_GRq+_P1RGt0=BgnodSfoT_uHkjZxTwsf5mPobLgg@mail.gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190509_022324_613721_E57DB150 
X-CRM114-Status: GOOD (  12.03  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [138.68.30.55 listed in list.dnswl.org]
Subject: Re: [OpenWrt-Devel] Build system puzzles: PCI_SUPPORT not being set
 for subtarget
X-BeenThere: openwrt-devel@lists.openwrt.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <openwrt-devel.lists.openwrt.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/openwrt-devel>, 
 <mailto:openwrt-devel-request@lists.openwrt.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/openwrt-devel/>
List-Post: <mailto:openwrt-devel@lists.openwrt.org>
List-Help: <mailto:openwrt-devel-request@lists.openwrt.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/openwrt-devel>,
 <mailto:openwrt-devel-request@lists.openwrt.org?subject=subscribe>
Cc: OpenWrt Development List <openwrt-devel@lists.openwrt.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

On 5/9/19 10:49 AM, Robert Marko wrote:

>> I don't see any differences between the generic and nand subtargets'
>> `config-default`, `target.mk`, or `image/*.mk` that seem related to
>> PCI_SUPPORT.
> Well, generic target has PCI symbols enabled in config-default
> https://github.com/openwrt/openwrt/blob/master/target/linux/ath79/generic/config-default#L14
>
> So you gotta enable those in nand too.
>
I had already tried that, as well as my understanding about the "inheritance"
of the various layers of config-4.xx and config-default that I also queried about.

I reconfirmed that

   openwrt/target/linux/ath79$ cp generic/config-default nand/config-default
   openwrt$ cat /dev/null > .config
   openwrt$ make menuconfig

has the same behavior -- the nand target does not set PCI_SUPPORT

Jeff


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
