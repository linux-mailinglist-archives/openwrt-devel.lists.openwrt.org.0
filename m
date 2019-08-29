Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BD15BA1967
	for <lists+openwrt-devel@lfdr.de>; Thu, 29 Aug 2019 13:55:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-ID:
	In-Reply-To:Date:References:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=54ltHH+f3/BKFXf5j3xNjsbcVsAeltb0Tr9fTTXEmxo=; b=OxIuadN4Qsu0nL
	fbz0xvws6NE4bGYtJ0WxScDUtyAcRBLHWYObR36FVx/oQK6OyQmRQukQpHnYBLgDShPy3ZdllOaSB
	UUOFF6mOoGwxMQZlCKXCRG97loWVrQJJjtbBHXMovBSe1OZ+f4z/r1bJuE1ju2BW0LTFDnWyWzezK
	kbiVzXm14cB8tDHDF4kBiTgg0DwkUu8l01L4hqMJrdTGw+BR6WKMiXmay7xgbAacxrbyjJWRv7O//
	dKmyX8JQLXhd5bYsobvuD4jCTAGR4WR4pVYRutueZwW6zUGnApe1qD+V+mL+mn2mz/ttUBEcLrylo
	sz6fTgmUsX4BBukrlfTg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i3J1e-0000AY-Rl; Thu, 29 Aug 2019 11:55:38 +0000
Received: from mail.klickitat.com ([54.70.207.208])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i3J1U-0000A5-52
 for openwrt-devel@lists.openwrt.org; Thu, 29 Aug 2019 11:55:29 +0000
Received: by mail.klickitat.com (Postfix, from userid 182)
 id 33743A6139E; Thu, 29 Aug 2019 04:55:26 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on dodson.localdomain
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=ALL_TRUSTED,BAYES_00
 autolearn=unavailable autolearn_force=no version=3.4.2
Received: from husum.klickitat.com (husum.ptp [192.168.80.4])
 by mail.klickitat.com (Postfix) with ESMTP id 78119A61394;
 Thu, 29 Aug 2019 04:55:25 -0700 (PDT)
From: Russell Senior <russell@personaltelco.net>
To: Christian Lamparter <chunkeey@gmail.com>
References: <87a7c1qxl2.fsf@husum.klickitat.com> <1619788.jSZVMTGyYI@debian64>
 <87r259kbvz.fsf@husum.klickitat.com> <4262093.GnkBSk0z1S@debian64>
 <87o90dbcpf.fsf@husum.klickitat.com>
 <87tva01ami.fsf@husum.klickitat.com>
 <87pnko19pv.fsf@husum.klickitat.com>
Date: Thu, 29 Aug 2019 04:55:25 -0700
In-Reply-To: <87pnko19pv.fsf@husum.klickitat.com> (Russell Senior's message of
 "Thu, 29 Aug 2019 04:39:56 -0700")
Message-ID: <87lfvc1902.fsf@husum.klickitat.com>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/24.5 (gnu/linux)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190829_045528_237166_BA446F25 
X-CRM114-Status: GOOD (  10.52  )
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


>> Fwiw, I took a little closer look at the squashfs code. I still don't
>> quite understand it, but I sprinkled some printk()'s and got a better
>> idea of what is happening.
>> 
>> With a root.squashfs of 6428672 bytes, we get the error in a call:
>
> Actually, the 6428672 bytes was from a later trial. Sorry for the
> confusion. I'm not sure what the real root.squashfs size was
> anymore. Gah. I'll need to redo it.

Here are the corresponding numbers from the retry:

root.squasfs size (from the sysupgrade.bin tarball): 6427978 bytes

squashfs_read_data(sb=(ptrval),index=0,length=6427970,next_index=16777224,output=(null))
b=0; bytes=-322; length=8; cur_index=0

>> 
>>   squashfs_read_data(sb=(ptrval),index=0,length=6427986,next_index=16777224,output=  (null))
>> 
>> it enters the loop at fs/squashfs/block.c:122 with b=0; bytes=-338; length=8; cur_index=0
>> 
>>     for (b = 0; bytes < length; b++, cur_index++) {
>>         bh[b] = sb_getblk(sb, cur_index);
>>         if (bh[b] == NULL)
>>             goto block_release;
>> 
>> sb_getblk() must return NULL, because it goes to block_release and falls
>> through to print the error message and exits with an error.


-- 
Russell Senior, President
russell@personaltelco.net

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

-- 
Russell Senior, President
russell@personaltelco.net

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
