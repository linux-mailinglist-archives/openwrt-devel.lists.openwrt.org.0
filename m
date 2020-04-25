Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A86A1B8886
	for <lists+openwrt-devel@lfdr.de>; Sat, 25 Apr 2020 20:30:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:
	Message-ID:From:To:References:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=z34uSS5f+D3XOnzWDT8zIRc5TI463yMqATKiOZTuHlQ=; b=SKSt2CzZqU87q2
	vbI3r9/IOvdC1YNgTCXqwBr6iYtLls07ot4mDJQNK95gwPsdpaw+MNpf/bwH4i0JcbwFBrRIfqsJg
	m53TFnzuva8SKlgYvX4KKT5JOceY0IZ2FBwTvxyuhKz7tk2UVlVcU7h9we0bLsfrT7MTeeEpIhdh5
	9qy0i1wHCrqdd71JcA94j93IvOPFEXQVIqAx8U+eyxtR+sjlTRotbXlPb5w2VQE21A9ppawJuIwNm
	3OmkeJIv20o2Y7vMNXUbkVrN2z763kVNYMkhntHofihN6qJmfKi6IiJcL+eJrg69ugib5ag2rRGQ5
	zLANOoYVpQrt4XIsMruQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jSPZB-0006iK-J3; Sat, 25 Apr 2020 18:30:17 +0000
Received: from mail.lucabert.de ([2a0a:51c0:0:52:1::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jSPYy-0005y6-I2
 for openwrt-devel@lists.openwrt.org; Sat, 25 Apr 2020 18:30:06 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=lucabert.de
 ; s=2020;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:
 Date:Message-ID:From:To:References:Subject:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=iadGH7x3IXkdxSKM+eIC5MhgBWfAdiXdIyP7g5qmyQE=; b=d5lXWMwHOT4yk4ifGxp9/m4Di/
 4h45cUnng5KEIAI0SCeEagf8FofSxT3xiogz2txKMgUZ8twTZD5e4YC7Injnf768RLNSwSucLFC6Z
 k4wEQYuy9rbqHHXQBwWsYqsar;
Received: from [2003:c2:7f18:bd00:2::1]
 by mail.lucabert.de with esmtpsa (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92.3) (envelope-from <lucabert@lucabert.de>)
 id 1jSPYx-0006WD-50
 for openwrt-devel@lists.openwrt.org; Sat, 25 Apr 2020 20:30:03 +0200
References: <3a7d11bb-dd4e-11d9-c867-7f97e86af293@lucabert.de>
 <bd261d22-6ad4-a018-63c0-c2e5ad9b90de@gmail.com>
 <f1152af1-19b3-5d9b-11e3-056c9f703e85@lucabert.de>
 <ebe5b5ca-67d4-a1f5-b5c6-756f99c1f5e3@gmail.com>
To: openwrt-devel@lists.openwrt.org
From: Luca Bertoncello <lucabert@lucabert.de>
Openpgp: preference=signencrypt
X-Face: *N]JhbB="`Ho]_HEy]Qn@=#}#T6Vx3(!v3%-=Lwa[wIk=1s&:}id_AN,wf{$tA{8HKlwU?oOm!.s.`}V-eD0+^qOUWZ@E8qyUK$y#j3|JBnvoKhpY/U@`"|@}$UuZQfyS1o&4(DceOp/Z"8[.S|lFMA;
 IC-Qb=i"z$~/mG)Ug"k7b!YT[r6b$'}ScyBxev]mRJf}2Lm:_!F@Fp82w;
 N-}hPXl~vkEZ[PjiT~R{RT||L-%JV$HmY^`[_L
Message-ID: <06e362cc-08be-6092-3286-ab1c23df1c31@lucabert.de>
Date: Sat, 25 Apr 2020 20:30:02 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.9.1
MIME-Version: 1.0
In-Reply-To: <ebe5b5ca-67d4-a1f5-b5c6-756f99c1f5e3@gmail.com>
Content-Language: de-DE
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200425_113004_602017_02C7CC06 
X-CRM114-Status: UNSURE (   9.75  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
Subject: Re: [OpenWrt-Devel] Upgrading LEDE to 19.07
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

Am 25.04.2020 um 20:27 schrieb Alberto Bursi:

Hi

> that's weird, that's 64MB. Maybe a V2 in an older box?
> What is the CPU?
> check cat /proc/cpuinfo
> The V1 has Atheros AR9103.

root@OpenWrt:~# cat /proc/cpuinfo
system type             : Atheros AR9132 rev 2
machine                 : TP-LINK TL-WR1043ND
processor               : 0
cpu model               : MIPS 24Kc V7.4
BogoMIPS                : 265.42
wait instruction        : yes
microsecond timers      : yes
tlb_entries             : 16
extra interrupt vector  : yes
hardware watchpoint     : yes, count: 4, address/irw mask: [0x0ffc,
0x0ffc, 0x0ffb, 0x0ffb]
isa                     : mips1 mips2 mips32r1 mips32r2
ASEs implemented        : mips16
shadow register sets    : 1
kscratch registers      : 0
package                 : 0
core                    : 0
VCED exceptions         : not available
VCEI exceptions         : not available

It is definitivly NOT a AR9103...
Any idea?

> openwrt forum https://forum.openwrt.org/

OK, thanks! I'll ask there.

Regards
Luca Bertoncello
(lucabert@lucabert.de)

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
