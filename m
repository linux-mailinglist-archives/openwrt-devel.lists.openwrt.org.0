Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EC85C10FDB6
	for <lists+openwrt-devel@lfdr.de>; Tue,  3 Dec 2019 13:33:24 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EeE2Gidb1wy8uTsyzMPvDLveMhk+HkqOaD93q1kI78Y=; b=lTYo2+6EoKQLQd
	yPV7qKONE5YKO3ypWr7ZV2ImroKT0z9Cri4TrqeiCVQWGMjBXQvEkJE3su7YD22Ga27Fvgd0QumiM
	KsK6oqvE6qkDD3x15DjhOWuBL3Dou9qem1+YBbyKZIIP/ViSSkyUzz57418NfJ89zCU+UNFWj5gQp
	tTiFIb+W9vAhty5VMWfyuf5zTnjj61HplnvAlz52qpZTNZrrGseWxDZt5pCGyjkXoefHDmRMQS9Hr
	3j7WNFfjkqYi07DxAaezoaNNzB/n7PgnEVTa9ekT8iSwkqAZuKXxpqH/lph5I2HpXuAAwIe1GkK+Q
	0+HU3W2MTdoWsucD6C1w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ic7Mk-0002iN-QI; Tue, 03 Dec 2019 12:33:18 +0000
Received: from mail.tintel.eu ([54.36.12.13])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ic7Ma-0002i1-CP
 for openwrt-devel@lists.openwrt.org; Tue, 03 Dec 2019 12:33:10 +0000
Received: from localhost (localhost [IPv6:::1])
 by mail.tintel.eu (Postfix) with ESMTP id 1E3CD449472A;
 Tue,  3 Dec 2019 13:33:06 +0100 (CET)
Received: from mail.tintel.eu ([IPv6:::1])
 by localhost (mail.tintel.eu [IPv6:::1]) (amavisd-new, port 10032)
 with ESMTP id DlCc8KKCMc0t; Tue,  3 Dec 2019 13:33:05 +0100 (CET)
Received: from localhost (localhost [IPv6:::1])
 by mail.tintel.eu (Postfix) with ESMTP id 5F2DE4645EDF;
 Tue,  3 Dec 2019 13:33:05 +0100 (CET)
DKIM-Filter: OpenDKIM Filter v2.10.3 mail.tintel.eu 5F2DE4645EDF
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linux-ipv6.be;
 s=502B7754-045F-11E5-BBC5-64595FD46BE8; t=1575376385;
 bh=6rk4oA28qZG7xinAFFMVxtybeQl7I5I6MB2Kp8s7rus=;
 h=To:From:Message-ID:Date:MIME-Version;
 b=osfoEv/C2Bgw6tR73PbTY1+J2GkbR26VubzOKSqb+VBEu8tSrl4/557K4/YhHVAUY
 TgtnfceyCB2CLG2mHa9CrMNZeObuzVQsiKmJ8yqOCsNvjBCUDKww46e9SuxYqlwb0H
 guoISK+Cwc0iPetfIFe1MIsCAndTxtrVX8flh7BE=
X-Virus-Scanned: amavisd-new at mail.tintel.eu
Received: from mail.tintel.eu ([IPv6:::1])
 by localhost (mail.tintel.eu [IPv6:::1]) (amavisd-new, port 10026)
 with ESMTP id ZUZNGoHZno2m; Tue,  3 Dec 2019 13:33:05 +0100 (CET)
Received: from [IPv6:2001:67c:21bc:24::adb] (taz.sof.bg.adlevio.net
 [IPv6:2001:67c:21bc:24::adb]) (Authenticated sender: stijn@tintel.eu)
 by mail.tintel.eu (Postfix) with ESMTPSA id 6B628449472A;
 Tue,  3 Dec 2019 13:33:04 +0100 (CET)
To: =?UTF-8?Q?Petr_=c5=a0tetiar?= <ynezz@true.cz>,
 Adrian Schmutzler <mail@adrianschmutzler.de>
References: <20191202232629.952385-1-stijn@linux-ipv6.be>
 <00f701d5a969$b9aa8cc0$2cffa640$@adrianschmutzler.de>
 <075e2d8a-191b-2993-2ee0-ebf432b4c2d6@linux-ipv6.be>
 <00c701d5a9d0$7da69ae0$78f3d0a0$@adrianschmutzler.de>
 <20191203120930.GC8181@meh.true.cz>
 <010701d5a9d3$92f3c320$b8db4960$@adrianschmutzler.de>
 <20191203123144.GE8181@meh.true.cz>
From: Stijn Tintel <stijn@linux-ipv6.be>
Message-ID: <12d89195-b1b7-5f9e-52a8-5411ad142733@linux-ipv6.be>
Date: Tue, 3 Dec 2019 14:33:03 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.2
MIME-Version: 1.0
In-Reply-To: <20191203123144.GE8181@meh.true.cz>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191203_043308_718936_2E3E40D7 
X-CRM114-Status: UNSURE (   8.81  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 0.1 DKIM_INVALID           DKIM or DK signature exists, but is not valid
Subject: Re: [OpenWrt-Devel] [PATCH] ath79: add support for Ubiquiti
 LiteBeam AC Gen2
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
Cc: openwrt-devel@lists.openwrt.org, pozega.tomislav@gmail.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

T24gMy8xMi8yMDE5IDE0OjMxLCBQZXRyIMWgdGV0aWFyIHdyb3RlOgo+IEFkcmlhbiBTY2htdXR6
bGVyIDxtYWlsQGFkcmlhbnNjaG11dHpsZXIuZGU+IFsyMDE5LTEyLTAzIDEzOjE3OjA0XToKPgo+
PiBPdGhlciB1Ym50LXdhIGRvIHRoaXMsIHRvbywgdGhleSBqdXN0IGRvIG5vdCBkZWZpbmUgaXQg
aW4gcGFyZW50IG5vZGU6Cj4gT2ssIEkndmUgY2hlY2tlZCBvbmx5IHRoZSBwYXJlbnQgbm9kZS4K
Pgo+PiBTbywgdGhlIHF1ZXN0aW9uIGlzIHdoZXRoZXIgaXQgd291bGQgbWFrZSBzZW5zZSB0byBy
ZW1vdmUgdGhlIGxpbmUgZm9yIGFsbCB0aGUgb3RoZXIgdWJudC13YSBkZXZpY2VzLCB0b28sIHRo
ZW4uCj4gSSB3b3VsZCByZW1vdmUgaXQsIGl0IGRvZXNuJ3QgbWFrZSBzZW5zZSBhbmQgaXMgbWlz
bGVhZGluZy4KPgo+IC0tIHluZXp6CgpVcGRhdGVkIG15IHN0YWdpbmcgdHJlZSBhZ2FpbjoKaHR0
cHM6Ly9naXQub3BlbndydC5vcmcvP3A9b3BlbndydC9zdGFnaW5nL3N0aW50ZWwuZ2l0O2E9c2hv
cnRsb2c7aD1yZWZzL2hlYWRzL2xiZS01YWMtZ2VuMgoKVGhhbmtzLApTdGlqbgoKCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCm9wZW53cnQtZGV2ZWwgbWFp
bGluZyBsaXN0Cm9wZW53cnQtZGV2ZWxAbGlzdHMub3BlbndydC5vcmcKaHR0cHM6Ly9saXN0cy5v
cGVud3J0Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL29wZW53cnQtZGV2ZWwK
