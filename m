Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D10E1EC116
	for <lists+openwrt-devel@lfdr.de>; Tue,  2 Jun 2020 19:37:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LiR9Vr3J0zNa2G4dZRa5mXFhaZNjJhdEFnJlfqZ7YgE=; b=A1PhNalCRUvO1v
	wB8vCa3LRmAiGYdRv7+BgX5c79fTU1rpqwsnTK+oXVIDwPxhZera3Ud50CrnwFCstvqvQEyFsHjvX
	k7ME/O85hvLqhLrcr+AJ5QgXeq1+6Ng1/D+eYIkMafU8hv9dBB79lmGZsEuJICaVRRA7RGdCLpDZ/
	udlAU7npdSztaw2ViZUzvKlMOSTUfCBi2vnrfr5GxWrx+lmuNNm1P3GdmodRFTov+S13JaZVvLfj2
	PhTgIdP2wxYmaibHyUcQlqGoVbcJHiASGAPnT6CliPpuqcaWyHvxEyDALOSIu5OpkwAUnTk53l9hs
	xPwOFCFm2FW3LtkcWhiQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jgAr7-0002Zo-Ef; Tue, 02 Jun 2020 17:37:41 +0000
Received: from mx-out.tlen.pl ([193.222.135.148])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jgAqv-0002Xp-UN
 for openwrt-devel@lists.openwrt.org; Tue, 02 Jun 2020 17:37:32 +0000
Received: (wp-smtpd smtp.tlen.pl 30032 invoked from network);
 2 Jun 2020 19:37:24 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=o2.pl; s=1024a;
 t=1591119444; bh=sRm3bx7ruv9aAKW3yyyomUArJLcTh4csuckwEaJmmGA=;
 h=Subject:To:From;
 b=IPleLOOORJn/5bTYoGfnu1oTvaJKJyfRhis/U8LUn+Qvhz86qk0911+sXwdcEwRvm
 iGccLAUt/Av2jyuCNFu2le1GyqZ7222f5NlaU6aLNZDGJ/mSuAUazdPOgEFLyPXS7+
 NQS/LVqB9E8SvkEzA0r9KP/kfryaa8ZWWSGt864k=
Received: from unknown (HELO [10.8.0.6]) (tomek_n@o2.pl@[5.2.67.190])
 (envelope-sender <tomek_n@o2.pl>)
 by smtp.tlen.pl (WP-SMTPD) with ECDHE-RSA-AES256-GCM-SHA384 encrypted SMTP
 for <openwrt-devel@lists.openwrt.org>; 2 Jun 2020 19:37:24 +0200
To: Adrian Schmutzler <freifunk@adrianschmutzler.de>,
 openwrt-devel@lists.openwrt.org
References: <20200528164930.61513-1-freifunk@adrianschmutzler.de>
From: Tomasz Maciej Nowak <tomek_n@o2.pl>
Message-ID: <a754ade6-65c3-90a0-6afd-d526256ffb68@o2.pl>
Date: Tue, 2 Jun 2020 19:37:23 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.1
MIME-Version: 1.0
In-Reply-To: <20200528164930.61513-1-freifunk@adrianschmutzler.de>
Content-Language: en-US
X-WP-MailID: 1e25614a9be868bf555b4aaab54e3169
X-WP-AV: skaner antywirusowy Poczty o2
X-WP-SPAM: NO 0000003 [8RAl]                               
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200602_103730_312488_F4CBA3DA 
X-CRM114-Status: GOOD (  11.34  )
X-Spam-Score: 2.5 (++)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 2.7 RCVD_IN_PSBL           RBL: Received via a relay in PSBL
 [193.222.135.148 listed in psbl.surriel.com]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [193.222.135.148 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [tomek_n[at]o2.pl]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
Subject: Re: [OpenWrt-Devel] [PATCH] mvebu: switch to kernel 5.4
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

SGkgQWRyaWFuLgoKVyBkbml1IDI4LjA1LjIwMjAgb8KgMTg6NDksIEFkcmlhbiBTY2htdXR6bGVy
IHBpc3plOgo+IExhc3QgcmVwb3J0cyB3aXRoIGtlcm5lbCA1LjQgaGF2ZSBhbGwgYmVlbiBwb3Np
dGl2ZSBbMV0sIHNvIGxldCdzIG9wZW4KPiB0aGlzIHRvIGEgd2lkZXIgcmFuZ2Ugb2YgdGVzdGVy
cy4KClN3aXRjaGluZyBrZXJuZWwgdmVyc2lvbiBuZWVkcyB0aGlzOgpodHRwczovL3BhdGNod29y
ay5vemxhYnMub3JnL3Byb2plY3Qvb3BlbndydC9wYXRjaC8yMDIwMDQyMDE3NDcxMS41MjM4Ny0x
LXRvbWVrX25AbzIucGwKdG8gYmUgcHVsbGVkIHdpdGggaXQsIG90aGVyd2lzZSBTQVRBIGFuZCBV
U0IgcG9ydHMgd29uJ3Qgd29yayBmb3Igc29tZSB1c2Vycy4KCj4gCj4gWzFdIGh0dHBzOi8vZ2l0
aHViLmNvbS9vcGVud3J0L29wZW53cnQvcHVsbC8yODA0Cj4gCj4gU2lnbmVkLW9mZi1ieTogQWRy
aWFuIFNjaG11dHpsZXIgPGZyZWlmdW5rQGFkcmlhbnNjaG11dHpsZXIuZGU+Cj4gCj4gLS0tCj4g
Cj4gSSBjb25zaWRlciBtZXJnaW5nIHRoZSBEU0EgUFIgc2hvcnRseSBhZnRlciB0aGUga2VybmVs
IGJ1bXA6Cj4gaHR0cHM6Ly9naXRodWIuY29tL29wZW53cnQvb3BlbndydC9wdWxsLzI5MzUKPiAt
LS0KPiAgdGFyZ2V0L2xpbnV4L212ZWJ1L01ha2VmaWxlIHwgMiArLQo+ICAxIGZpbGUgY2hhbmdl
ZCwgMSBpbnNlcnRpb24oKyksIDEgZGVsZXRpb24oLSkKPiAKPiBkaWZmIC0tZ2l0IGEvdGFyZ2V0
L2xpbnV4L212ZWJ1L01ha2VmaWxlIGIvdGFyZ2V0L2xpbnV4L212ZWJ1L01ha2VmaWxlCj4gaW5k
ZXggYjk1NGE4OGY2ZC4uYjlhNmE3OWZlNSAxMDA2NDQKPiAtLS0gYS90YXJnZXQvbGludXgvbXZl
YnUvTWFrZWZpbGUKPiArKysgYi90YXJnZXQvbGludXgvbXZlYnUvTWFrZWZpbGUKPiBAQCAtMTEs
NyArMTEsNyBAQCBCT0FSRE5BTUU6PU1hcnZlbGwgRUJVIEFybWFkYQo+ICBGRUFUVVJFUzo9ZnB1
IHVzYiBwY2kgcGNpZSBncGlvIG5hbmQgc3F1YXNoZnMgcmFtZGlzayBib290LXBhcnQgcm9vdGZz
LXBhcnQKPiAgU1VCVEFSR0VUUzo9Y29ydGV4YTkgY29ydGV4YTUzIGNvcnRleGE3Mgo+ICAKPiAt
S0VSTkVMX1BBVENIVkVSOj00LjE5Cj4gK0tFUk5FTF9QQVRDSFZFUjo9NS40Cj4gIEtFUk5FTF9U
RVNUSU5HX1BBVENIVkVSOj01LjQKPiAgCj4gIGluY2x1ZGUgJChJTkNMVURFX0RJUikvdGFyZ2V0
Lm1rCj4gCgoKLS0gClRNTgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18Kb3BlbndydC1kZXZlbCBtYWlsaW5nIGxpc3QKb3BlbndydC1kZXZlbEBsaXN0cy5v
cGVud3J0Lm9yZwpodHRwczovL2xpc3RzLm9wZW53cnQub3JnL21haWxtYW4vbGlzdGluZm8vb3Bl
bndydC1kZXZlbAo=
