Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B42A17D041
	for <lists+openwrt-devel@lfdr.de>; Sat,  7 Mar 2020 22:24:07 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:MIME-Version:Message-ID:To:From:Date:
	Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=JM8p2kG2bXs6nePf8s+5iR+eV8LJQXujScG+60xWpLI=; b=u6A+FQqi5BJkZx
	G5FgP+DMMszqDCIVBIR+zFSAv5sf7ufQcIRzpsbB0Wg3g3oqOXNf/N2z1TATaYatiF6Tg6YwrV6iy
	36F9St8DGxrc+1GW84Zd1/7JjIq2+LLY2CAtHUfWfb56rr2G7ri6r/4upoZ8xr/Cv4/G8zhYrTn/5
	SxVp2mfu7/z/K0KXidX34SlnruQipVIn7dH9LWPP7VZbrPJ+g1iutryO8L/EFHWnZKnmesv6jzbbS
	/wSFO9n6oOuMAGOtKvqamv9tETjyp2ZQITnKnRGFZquS/O/o9/6l20jDIWJy6hmp4pEezcJBZJcF7
	ztnxMn/RaKdVel7az15A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jAgvN-0006HC-Ho; Sat, 07 Mar 2020 21:23:57 +0000
Received: from util-01.infra.openwrt.org ([46.101.232.90])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jAgvG-0006GR-7g
 for openwrt-devel@lists.openwrt.org; Sat, 07 Mar 2020 21:23:51 +0000
Received: from mail.onyx.syn-alias.com ([206.152.134.66]
 helo=smtp.centurylink.net)
 by util-01.infra.openwrt.org with esmtp (Exim 4.89)
 (envelope-from <shep971@centurylink.net>) id 1jAgv8-0001Sm-6O
 for openwrt-devel@openwrt.org; Sat, 07 Mar 2020 16:23:42 -0500
DKIM-Signature: v=1; a=rsa-sha1; d=centurylink.net; s=ctl201402;
 c=relaxed/simple; q=dns/txt; i=@centurylink.net; t=1583616219;
 h=From:Subject:Date:To:MIME-Version:Content-Type;
 bh=IaoAVEnzXO2tKXc4N2LFOw3zA1A=;
 b=GA3HQ8hrAK/36VOjuqt74pHvMONTHy4wpiqNT7nmI3xtHBq9qoGp8GDMghM2I4QT
 B3QxfovQw7Y7LpgdwolXI6/lAvP6Nl4iYfXOb+sYEuC12cRXmRafRfqwEu6FFD/u
 8HHionCZZM5Cgy3TZv8suZi9u3tMXZ2/OQJF+3en7myHtlombR+VaLFmB0/5NPO1
 LW3+aHc1NL0Qy0rNb1VVS+kXe+gvP0kGaJndGL7PPJmdGt5Am2O1KIiXWPCGdf+i
 nMNiEx1D+dvvb0oi5GLjt7+iAsfb81yUAklSOnQ2WuF8BA6P3/nrPtDMTsN6ITPU
 GyEqZdghctWMdRq7Ky5how==;
X_CMAE_Category: , ,
X-CNFS-Analysis: v=2.3 cv=PLRxBsiC c=1 sm=1 tr=0
 a=n6W1qF9bqTqjlf0I0+Sn6Q==:117 a=n6W1qF9bqTqjlf0I0+Sn6Q==:17
 a=KGjhK52YXX0A:10 a=IkcTkHD0fZMA:10 a=SS2py6AdgQ4A:10 a=AsiJWZegAdEA:10
 a=eQrCS-SpgXYA:10 a=3T53dM8ewDveEqPll1AA:9 a=QEXdDO2ut3YA:10
X-CM-Score: 0
X-Scanned-by: Cloudmark Authority Engine
Feedback-ID: dfw:ctl:res:onyx
X-Authed-Username: c2hlcDk3MUBjZW50dXJ5bGluay5uZXQ=
Authentication-Results: smtp02.onyx.dfw.sync.lan
 smtp.user=shep971@centurylink.net; auth=pass (LOGIN)
Received: from [71.32.5.18] ([71.32.5.18:48734] helo=centurylink.net)
 by smtp.centurylink.net (envelope-from <shep971@centurylink.net>)
 (ecelerity 3.6.25.56547 r(Core:3.6.25.0)) with ESMTPSA
 (cipher=AES256-GCM-SHA384) 
 id E5/9C-14806-BD0146E5; Sat, 07 Mar 2020 16:23:39 -0500
Date: Sat, 7 Mar 2020 13:23:34 -0800
From: "Heppler, J. Scott" <shep971@centurylink.net>
To: openwrt-devel@openwrt.org
Message-ID: <20200307212333.GA6999@centurylink.net>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Spam-Score: -1.9 (-)
X-Spam-Report: Spam detection software,
 running on the system "util-01.infra.openwrt.org", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 jo@mein.io for details.
 Content preview: I'm looking for some clarification on a prior patch: I'm
 generating
 a new snapshot build and have the following questions: 1) My prior patch
 was criticized for a lack of mt7620/base-files/etc/board.d/01_leds entry.
 I was basing my build on the D-Link DIR-810L which seems to have the same
 Cameo manufactured board. The D-Li [...] 
 Content analysis details:   (-1.9 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
 blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: centurylink.net]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (shep971[at]centurylink.net)
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [206.152.134.66 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (shep971[at]centurylink.net)
 -1.9 BAYES_00               BODY: Bayes spam probability is 0 to 1%
 [score: 0.0000]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200307_132350_439933_D70B1913 
X-CRM114-Status: UNSURE (  -0.52  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -1.3 (-)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-1.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [46.101.232.90 listed in list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [shep971[at]centurylink.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [shep971[at]centurylink.net]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
Subject: [OpenWrt-Devel] ramips: adding support for TRENDnet DIR-810DR
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

SSdtIGxvb2tpbmcgZm9yIHNvbWUgY2xhcmlmaWNhdGlvbiBvbiBhIHByaW9yIHBhdGNoOgoKSSdt
IGdlbmVyYXRpbmcgYSBuZXcgc25hcHNob3QgYnVpbGQgYW5kIGhhdmUgdGhlIGZvbGxvd2luZyBx
dWVzdGlvbnM6CgoxKSAgTXkgcHJpb3IgcGF0Y2ggd2FzIGNyaXRpY2l6ZWQgZm9yIGEgbGFjayBv
ZgptdDc2MjAvYmFzZS1maWxlcy9ldGMvYm9hcmQuZC8wMV9sZWRzIGVudHJ5LiAgSSB3YXMgYmFz
aW5nIG15IGJ1aWxkIG9uCnRoZSBELUxpbmsgRElSLTgxMEwgd2hpY2ggc2VlbXMgdG8gaGF2ZSB0
aGUgc2FtZSBDYW1lbyBtYW51ZmFjdHVyZWQKYm9hcmQuICBUaGUgRC1MaW5rIGxhY2tzIGFueSBl
bnRyaWVzIGluIDAxX2xlZHMuICBJcyB0aGlzIGFuIG92ZXJzaWdodAp0aGF0IEksIGFuZCBESVIt
ODEwTCBlbnRyeSB3aWxsIG5lZWQgdG8gY29ycmVjdD8gIE9yIGlzIGl0IGp1c3Qgbm90Cm5lZWRl
ZD8KCjIpICBJIHRoaW5rIGl0IHdvdWxkIGJlIHBvc3NpYmxlIGZvciBib3RoIHRoZSBESVItODEw
TCBhbmQgVEVXLTgxMERSIHRvCmhhdmUgZmFjdG9yeS5iaW4uICBQcmVzZW50bHksIGEgZmFjdG9y
eSBpbWFnZSBpcyBuZWVkZWQgZm9yIGluaXRpYWwKaW5zdGFsbGF0aW9uIGFuZCBpcyBwcm9kdWNl
ZCB1c2luZyBDYW1lbwpjYW1lby9uY2MvaG9zdFRvb2xzL25jY19hdHRfaHdpZCB0b29sLiAgVGhp
cyB0b29sIGlzIGRpZmZpY3VsdCB0byB1c2UgYXMKaXQgcmVxdWlyZXMgMzJiaXQgbGlicyBhbmQg
ZnVsbCBwYXRocyB0byBpbXBsZW1lbnQuICBFc3NlbnRpYWxseSB0aGUKZm9sbG93aW5nIHN0cmlu
ZyBuZWVkcyB0byBiZSBhcHBlbmRlZCB0byB0aGUgc3lzdXBncmFkZSBpbWFnZToKIglURVctODEw
RFIBBDEuMVICAldXAwMxLjAFBzEuMTNCMDQgAAQCACnCi8OKVzkiClRoZSBESVItODEwTCBzaG91
bGQgd29yayB0aGUgc2FtZSB3YXkuICBDYW4geW91IHBvaW50IHRvIGFueSBwcm9qZWN0CmZpcm13
YXJlIHRvb2xzIHRvIGFwcGVuZCB0aGUgc3RyaW5nIHRvIGEgc3lzdXBncmFkZS5iaW4/CgozKSBN
QUMgYWRkcmVzcy4gIE15IHByZWxpbWluYXJ5IGJ1aWxkIGRvZXMgcmVhZCB0aGUgbXRkLWVlcHJv
bSBmb3IgdGhlCmZhY3RvcnkgTUFDLiAgVGhlIDFzdCAzIGNvdXBsZXRzIHNwZWNpZnkgVHJlbmRu
ZXQuICBUaGUgbGF0ZXIgMyBhcmUKcmFuZG9tIGFuZCBkbyBub3QgbWF0Y2ggdGhlIGZhY3Rvcnkg
ZmlybXdhcmUuICBNeSBPcGVuV1JUIFRFVy03MzJCUiBoYXMKdGhlIFZlbmRvciBwYXJ0IG9mIHRo
ZSBNQUMgYW5kIG5vdCB0aGUgbW9kZWwuICBUaGlzIGlzIGFsc28gcmVwbGljYXRlZApvbiB0aGUg
ZXhpc3RpbmcgRElSLTgxMEwgTUFDLiAgRG9lcyB0aGlzIG5lZWQgdG8gYmUgYWx0ZXIgYW5kIGlm
IHNvIGl0CmFwcGVhcnMgaXQgbmVlZHMgdG8gYmUgZG9uZSBpbiB0aGUgRC1MaW5rLgoKNCkgIFBs
YW5ldCBMRUQuICBCb3RoIHRoZSBELUxpbmsgYW5kIHRoZSBUcmVuZG5ldCBoYXZlIDIgbGVuc2Vz
OiAgUG93ZXIKYW5kIFBsYW5ldC4gIEJlaGluZCBlYWNoIGxlbnNlLCBzaXQgZ3JlZW4vb3Jhbmdl
IGxlZHMuICBUaGUgRC1MaW5rIGRvZXMKbm90IGhhdmUgYW55ICouZHRzIGdyZWVuOnBsYW5ldCBl
bnRyaWVzLiAgSSB0aGluayBib3RoIG5lZWQgc29tZQphZGRpdGlvbmFsIGVudGlyZXMuICBJIGhh
dmUgNCBncGlvIHBpbnMgdGhhdCBhcmUgbm90IHJlZmVyZW5jZWQ6CmdwaW8gMTAsIDExLCAxNCBv
ciAxNS4gIFRoZSBQb3dlciBMZW5zZSBzZWVtcyB0byB3b3JrIGZpbmUsICBibGlua2luZwpvcmFu
Z2Ugd2hpbGUgYm9vdGluZywgc3RlYWR5IGdyZWVuIG9uIHN1Y2Nlc3MuICBPbiBteSBURVctNzMy
QlIsIHRoZQpQbGFuZXQgTEVEIGlzIHN0ZWFkeSBncmVlbiB3aXRoIHF1aWV0IGNvbm5lY3Rpb24g
YW5kIGJsaW5raW5nIGdyZWVuIHdpdGgKd2lyZWxlc3MvbmljIHBvcnQgZGF0YSBmbG93LiBDb2Rl
IGZyb20KYXI3MXh4L2Jhc2UtZmlsZXMvZXRjL2JvYXJkLmQvMDFfbGVkcwoKdWNpZGVmX3NldF9s
ZWRfbmV0ZGV2ICJ3YW4iICJXQU4iICJ0cmVuZG5ldDpncmVlbjpwbGFuZXQiICJldGgwIgoKVGhl
IERJUi04MTBMIGFuZCBURVctODEwRFIgSSB0aGluayBzaG91bGQgc2lnbmFsIHRoZSBzYW1lIGlu
Zm9ybWF0aW9uIGFzCnRoZSBURVctNzMyQlIuCgpSZWdhcmRzCgotLSAKSi4gU2NvdHQgSGVwcGxl
cgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18Kb3Blbndy
dC1kZXZlbCBtYWlsaW5nIGxpc3QKb3BlbndydC1kZXZlbEBsaXN0cy5vcGVud3J0Lm9yZwpodHRw
czovL2xpc3RzLm9wZW53cnQub3JnL21haWxtYW4vbGlzdGluZm8vb3BlbndydC1kZXZlbAo=
