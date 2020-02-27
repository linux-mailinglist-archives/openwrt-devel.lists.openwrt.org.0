Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F3041716E7
	for <lists+openwrt-devel@lfdr.de>; Thu, 27 Feb 2020 13:16:59 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:References:Message-Id:Date:
	In-Reply-To:From:Mime-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yQvamuWizenW47tiBz9/w/pasPkiMTsKVNjnFknv0jM=; b=kmX00PPeSkxavL
	kOSMYPNUn4cTJYz03qn8wD/6vJfEZt5Sma0sxa+lRWqb2TQSmEDaaRnrsVO71O6OjPs39eDC83u74
	/v4fI6W64C7ggre8ErmXqXJH0KGLtdgivaA4rfMbhYrbqi+4L8aMJlOGXhaHdIFWlwzO0Qb3OuLWY
	FCRow5hsHWIhrREoRCt3VjZUNJFkakraipfSC5OViuM/OcFbtJ/5fIx4zN13PbO3ArfBlpBTpWg6e
	cxtszTEoDu+cOoVevWVBGN7wUxMAI2Fp4Lz6/+JeCd/yo00oIAyxlm6Jwg1W3myGkLMlvDgd60iXl
	gHushO3D80q0xUrNy/Hg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j7I5x-0007O8-F4; Thu, 27 Feb 2020 12:16:49 +0000
Received: from web0119.zxcs.nl ([2a06:2ec0:1::119])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j7I5o-0007Dg-8I
 for openwrt-devel@lists.openwrt.org; Thu, 27 Feb 2020 12:16:42 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=oranjevos.nl; s=x; h=To:References:Message-Id:Content-Transfer-Encoding:Cc:
 Date:In-Reply-To:From:Subject:Mime-Version:Content-Type:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=g9yfg4x1OBSp1J5kymLy/ORDjxEs4iIG4g46PihJiCs=; b=p5NBJj7AqbaohyJyUTpCAUxoKQ
 RpNhBrGtiWlsj0n5OcWmFv75lru5iXZFLVK7C69gU3O8rHFAl2qR7M0S9ijFuGfCKfr7DDiM7uTxC
 PliIAEebOR+7vBLrUjISFBevm1ykneagsKO3uhHi26rXu0Erwzee+ZmhDYy2/59OooKS0apjWB4vg
 TQKbTR5ZafdfQrc9DkypgUjvCd73EyfJHaVNdb2btU0pa1g0eg48mYib7kPyLAfqWbSOBk7X/EcE/
 nj8GWhd6GglyUn9wq1AR+B631/fpkc14Peg0QQuNAZl8EdvLOWP7GiE3iV4KvZ4GyrstwEajhNDb3
 41jGfhMA==;
Received: from dhcp-077-248-110-239.chello.nl ([77.248.110.239]:60522
 helo=boekje.achterlaan)
 by web0119.zxcs.nl with esmtpsa (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92.3) (envelope-from <por@oranjevos.nl>)
 id 1j7I5j-003rod-Ed; Thu, 27 Feb 2020 13:16:35 +0100
Mime-Version: 1.0 (Mac OS X Mail 13.0 \(3608.60.0.2.5\))
From: Paul Oranje <por@oranjevos.nl>
In-Reply-To: <CAPxccB3wPu-7kVJGyqG=KkkKLy1Awqux384j334qfvQU=sWehQ@mail.gmail.com>
Date: Thu, 27 Feb 2020 13:16:27 +0100
Message-Id: <3824EA2D-94D2-4C70-88B0-1652A4107E14@oranjevos.nl>
References: <CAPxccB1fkreXtLxb06yPdRjhk0ruvvV+Yf+O+SHvMeESuNFqWA@mail.gmail.com>
 <52C4ED1B-FFFC-4E45-A3A9-A6F222C1818C@oranjevos.nl>
 <CAPxccB3wPu-7kVJGyqG=KkkKLy1Awqux384j334qfvQU=sWehQ@mail.gmail.com>
To: Eneas Queiroz <cotequeiroz@gmail.com>
X-Mailer: Apple Mail (2.3608.60.0.2.5)
X-Authenticated-Id: paul@oranjevos.nl
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200227_041640_574988_5760291E 
X-CRM114-Status: GOOD (  12.21  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
Subject: Re: [OpenWrt-Devel] ipq40xx: QCE/crypto fixes & enhancements (PR
 #2518)
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
Cc: OpenWrt Development List <openwrt-devel@lists.openwrt.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Op 26 feb. 2020, om 16:13 heeft Eneas Queiroz <cotequeiroz@gmail.com> het volgende geschreven:
> 
> On Wed, Feb 26, 2020 at 10:48 AM Paul Oranje <por@oranjevos.nl> wrote:
>> 
>> Having read the whole conversation: an impressive piece of work.
>> 
>> Could this helps with ipq806x ?
>> On ipq806x qce isn't available on all SOCs (supposedly only on ipq8064) and therefore support has been removed from the kernel [1].
>> 
>> 
>> [1] commit ad07166ea7286f350628f1093e4385db9be63d31 (ipq806x: remove unsupported hw-crypto qce driver)
>> 
>> Regards,
>> Paul
>> 
> 
> Hi Paul
> 
> I'm glad you like it, thanks.
> 
> I don't know much about the ipq8064 crypto engine, other than it is
> not compatible with the ipq40xx one, and that's why I removed it from
> the image.  I looked into it superficially, but couldn't find much
> information about it.
> 
> What we can do right away is to enable the neon/arm-asm modules, as I
> did for ipq40xx.  I'll wait for ipq40xx's fate, before I apply the
> same logic to ipq806x, and perhaps others.  If I were to just grep for
> CONFIG_NEON=y, but not CONFIG_ARM_CRYPTO=y:
> $ git grep -L '^CONFIG_ARM_CRYPTO=y' -- $(git grep -l '^CONFIG_NEON=y'
> -- target/linux/) | xargs -r dirname | sort -u
> target/linux/armvirt/32
> target/linux/at91
> target/linux/bcm27xx/bcm2709
> target/linux/ipq40xx
> target/linux/ipq806x
> target/linux/layerscape/armv7
> target/linux/mediatek/mt7623
> target/linux/omap
> target/linux/samsung/s5pv210
> target/linux/sunxi
> target/linux/zynq
> 
> Cheers,
> 
> Eneas

So I shall patiently await the "fate".
Thanks,
Paul


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
