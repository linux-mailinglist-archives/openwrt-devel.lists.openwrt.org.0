Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 98324A1943
	for <lists+openwrt-devel@lfdr.de>; Thu, 29 Aug 2019 13:48:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-ID:
	In-Reply-To:Date:References:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EKH7JjJxH56S3frkijhyupNv6af1p9iU/YMFU0j+Tlo=; b=EaT45BG+wTLbS9
	V0hQD2y3PXIjkgIVJnQp0iqNlCOEBipk8ahkEahc4FO91SStQ1M8tMlIqv+fhenuJ9jy65YQHv5fi
	8j4RzHx3ct5y1d5/esGgfxDYiir0a0k//kNq5tY4ziDA3p3/iNiCGk83uJYvmeUrqjacvSWD7TA7G
	ZijV88ArEUCHXk36bCxdZRo2+gSb1AvFLA4SY461AT+vpJppUo2eyfvj43yaLNyXsMZ9HWqjN0D9N
	NDGRtORjIUS+7UiK23Z7HC1W8EOWEyDAt2RpwxPtZYPlmTcjiExkMDvlEKNF8tYabtZ8yrEMq1H+f
	li3bHiecME9SvdF+GQfw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i3Iv1-0002vj-F5; Thu, 29 Aug 2019 11:48:47 +0000
Received: from mail.klickitat.com ([54.70.207.208])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i3ImW-0001dC-AQ
 for openwrt-devel@lists.openwrt.org; Thu, 29 Aug 2019 11:40:02 +0000
Received: by mail.klickitat.com (Postfix, from userid 182)
 id 2C79BA613A6; Thu, 29 Aug 2019 04:39:59 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on dodson.localdomain
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=ALL_TRUSTED,BAYES_00,
 URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Received: from husum.klickitat.com (husum.ptp [192.168.80.4])
 by mail.klickitat.com (Postfix) with ESMTP id 094C8A61394;
 Thu, 29 Aug 2019 04:39:57 -0700 (PDT)
From: Russell Senior <russell@personaltelco.net>
To: Christian Lamparter <chunkeey@gmail.com>
References: <87a7c1qxl2.fsf@husum.klickitat.com> <1619788.jSZVMTGyYI@debian64>
 <87r259kbvz.fsf@husum.klickitat.com> <4262093.GnkBSk0z1S@debian64>
 <87o90dbcpf.fsf@husum.klickitat.com>
 <87tva01ami.fsf@husum.klickitat.com>
Date: Thu, 29 Aug 2019 04:39:56 -0700
In-Reply-To: <87tva01ami.fsf@husum.klickitat.com> (Russell Senior's message of
 "Thu, 29 Aug 2019 04:20:21 -0700")
Message-ID: <87pnko19pv.fsf@husum.klickitat.com>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/24.5 (gnu/linux)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190829_044000_409452_BFCD5495 
X-CRM114-Status: GOOD (  12.02  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
Subject: Re: [OpenWrt-Devel] Squashfs breakage lottery with UBI WAS: [PATCH
 RFC 2/2] amp821xx: use newly added pad-squashfs for Meraki MR24
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
Cc: ynezz@true.cz, openwrt-devel@lists.openwrt.org, mail@adrianschmutzler.de,
 dev@kresin.me, jonas.gorski@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org


> Fwiw, I took a little closer look at the squashfs code. I still don't
> quite understand it, but I sprinkled some printk()'s and got a better
> idea of what is happening.
> 
> With a root.squashfs of 6428672 bytes, we get the error in a call:

Actually, the 6428672 bytes was from a later trial. Sorry for the
confusion. I'm not sure what the real root.squashfs size was
anymore. Gah. I'll need to redo it.

> 
>   squashfs_read_data(sb=(ptrval),index=0,length=6427986,next_index=16777224,output=  (null))
> 
> it enters the loop at fs/squashfs/block.c:122 with b=0; bytes=-338; length=8; cur_index=0
> 
>     for (b = 0; bytes < length; b++, cur_index++) {
>         bh[b] = sb_getblk(sb, cur_index);
>         if (bh[b] == NULL)
>             goto block_release;
> 
> sb_getblk() must return NULL, because it goes to block_release and falls
> through to print the error message and exits with an error.


-- 
Russell Senior, President
russell@personaltelco.net

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
