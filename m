Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 322B01691AA
	for <lists+openwrt-devel@lfdr.de>; Sat, 22 Feb 2020 20:56:35 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:MIME-Version:Message-ID:To:From:Date:
	Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=sTEOC7Bz6GK4DsYz1IssjTPAFhJks4IkgkDYSJ4so0U=; b=c/8n1cGG55ihNd
	ErURJEM3w43DsOWLNxV4v3x4k68gEsVyEL3NIkLl+byxpPcH8x2Da3841JW30YldIC3MVk/GBhPgs
	WJ5O1TTI11ee1EveTMIrYRXECrVefgVYElv7sce+amPlfzcFa+L6QsS/0+XpXP6+KuI66FpTHXgO0
	Mq77z1JB0RaFXYr1Hr+zfN8m/eAi2diyRoWcR+s0F1IFGrPTeGYBQbX75iTtkp10nJQILIqy0SAl3
	h2OY26oPKY4wHShxdxPbzTX/1Zbtm+RqcrE+qoTt1W1s/r4h3+t6cCrRb9KLGD/xPYboglOmcMkK0
	LOFgEgJIF1PXhS84BYsw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j5at1-00030D-NR; Sat, 22 Feb 2020 19:56:27 +0000
Received: from mail.onyx.syn-alias.com ([206.152.134.66]
 helo=smtp.centurylink.net)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j5ass-0002ze-7b
 for openwrt-devel@lists.openwrt.org; Sat, 22 Feb 2020 19:56:19 +0000
DKIM-Signature: v=1; a=rsa-sha1; d=centurylink.net; s=ctl201402;
 c=relaxed/simple; q=dns/txt; i=@centurylink.net; t=1582401371;
 h=From:Subject:Date:To:MIME-Version:Content-Type;
 bh=2tvlmS4hRJmBTtsZEwZWyG10K7A=;
 b=BaOQGfbLckgimEtet4nr0AnDoz8e+CfhfxfrDC6W5/tahuz0TjaZCEMetDCZHXJT
 nMmkJ+P8PvxGtBFnsSN2KKB7OwZA5N+DBCiPNvAy6gtmWBLzG3PkIKaHs1zHr9nX
 Qs4Z39r2S/D3xjoChYS66433Ux41e01wZEKderetJ00/umLjiN+fpiDWxFNDw5RM
 D6mfxvl16CJtfJTywVaZoBGLj79rtcO4G1LhNr+RGtErngNI55EjIo7XTF9Ouov0
 EBZuOUhQbf53GILKqIMoW3ipQSzuxrqf2HMVGJ/tlnOB8mMSKcY9NI0eO7lgWSX3
 V90Erj5UFCW4efkac0vPGA==;
X_CMAE_Category: , ,
X-CNFS-Analysis: v=2.3 cv=U9Hs8tju c=1 sm=1 tr=0
 a=n6W1qF9bqTqjlf0I0+Sn6Q==:117 a=n6W1qF9bqTqjlf0I0+Sn6Q==:17
 a=KGjhK52YXX0A:10 a=IkcTkHD0fZMA:10 a=l697ptgUJYAA:10 a=AsiJWZegAdEA:10
 a=eQrCS-SpgXYA:10 a=jdP34snFAAAA:8 a=o3QzHOVuKlMTxZqC-pkA:9 a=QEXdDO2ut3YA:10
 a=jlphF6vWLdwq7oh3TaWq:22
X-CM-Score: 0
X-Scanned-by: Cloudmark Authority Engine
Feedback-ID: dfw:ctl:res:onyx
X-Authed-Username: c2hlcDk3MUBjZW50dXJ5bGluay5uZXQ=
Authentication-Results: smtp04.onyx.dfw.sync.lan
 smtp.user=shep971@centurylink.net; auth=pass (LOGIN)
Received: from [71.32.5.18] ([71.32.5.18:55778] helo=centurylink.net)
 by smtp.centurylink.net (envelope-from <shep971@centurylink.net>)
 (ecelerity 3.6.25.56547 r(Core:3.6.25.0)) with ESMTPSA
 (cipher=AES256-GCM-SHA384) 
 id 58/B2-07829-B57815E5; Sat, 22 Feb 2020 14:56:11 -0500
Date: Sat, 22 Feb 2020 11:56:04 -0800
From: "Heppler, J. Scott" <shep971@centurylink.net>
To: openwrt-devel@lists.openwrt.org
Message-ID: <20200222195604.GA7502@centurylink.net>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200222_115618_320208_233644CA 
X-CRM114-Status: UNSURE (   0.84  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [shep971[at]centurylink.net]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [shep971[at]centurylink.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [206.152.134.66 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [206.152.134.66 listed in wl.mailspike.net]
Subject: [OpenWrt-Devel] firmware-utils/mkcameofw for TEW-810DR
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

I have successfully adapted OpenWRT's D-Link DIR-810L build for a
Trendnet TEW-810DR.  It was low-hanging fruit, the devices essentially
use the same board.

One difference is that Trendnet firmware has what I've seen described as
a cameo signature appended at the end.

For my own use, I could use the cameo tool: ncc_att_hwid as described
here:

https://openwrt.org/toh/trendnet/trendnet_tew-810dr_1.0_1.1

I think if I take the extra step to incorporate the cameo signature, the
patch would be committable.

I've searched the git code base for an example of how to append the code
during the build and have come up empty.  Source for mkcameofw.c has

"Options:\n"
"  -k <file>       read kernel image from the file <file>\n"
"  -c              use the kernel image as a combined image\n"
"  -M <model>      set model to <model>\n"
"  -o <file>       write output to the file <file>\n"
"  -r <file>       read rootfs image from the file <file>\n"
"  -S <signature>  set image signature to <signature>\n"
"  -R <region>     set image region to <region>\n"
"  -V <version>    set image version to <version>\n"
"  -I <size>       set image size to <size>\n"
"  -K <size>       set kernel size to <size>\n"
"  -h              show this screen\n"

If I read this correctly
-M TEW-810DR
-V 1.0R
-R WW  #I'm guessing WW is Region code
-S 1.0

Could someone point me to a *dts that utilizes this tool or a *dts that
reaches the same goal?

Thanks in advance
-- 
J. Scott Heppler

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
