Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 16A431C8355
	for <lists+openwrt-devel@lfdr.de>; Thu,  7 May 2020 09:19:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:
	MIME-Version:References:Message-ID:To:From:Date:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=aLsTmxElR1EU7QUEZsN98x4E8h9OO4A4fC0ObXmY7cw=; b=DbakkMtHK4A8/xa9o7PkHUGnPR
	u2Hsi55KhCZgn98SV6TF6WYubqO0mnUUAcqmjELXhWDARADA70JOo0kjs98wfTN/6eqoR/T1HldEc
	faMiamcKbGuPIRUNzmiSSr1qV28Esf8amk+y9W2VofOc6DgRQRuYzW4I0pojKakaoIQ+XIy6/19A5
	21MMKQARaz0zzoYcP3sQOUVDNdM4cPz1Xn8EDgnk+9AP7m2YWb7TsLwDwYxCGCqKkI0XJjbamL7LA
	GT6m5SiQWIxNLeFZfhaZaBu++RVo2otbzCdqUmorAPPuWsOYRt6Y2RjN77URxgTbddc/9m+i/Vnd6
	VBpxjxBw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWaoS-0004zE-Nn; Thu, 07 May 2020 07:19:20 +0000
Received: from smtp-out.xnet.cz ([178.217.244.18])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWaoM-0004yq-N2
 for openwrt-devel@lists.openwrt.org; Thu, 07 May 2020 07:19:16 +0000
Received: from meh.true.cz (meh.true.cz [108.61.167.218])
 (Authenticated sender: petr@true.cz)
 by smtp-out.xnet.cz (Postfix) with ESMTPSA id 63FFA6A6C;
 Thu,  7 May 2020 09:19:09 +0200 (CEST)
Received: by meh.true.cz (OpenSMTPD) with ESMTP id 101cc693;
 Thu, 7 May 2020 09:18:53 +0200 (CEST)
Date: Thu, 7 May 2020 09:19:07 +0200
From: Petr =?utf-8?Q?=C5=A0tetiar?= <ynezz@true.cz>
To: Rosen Penev <rosenp@gmail.com>
Message-ID: <20200507071907.GA6829@meh.true.cz>
References: <20200410021510.1595823-1-rosenp@gmail.com>
 <20200410021510.1595823-2-rosenp@gmail.com>
 <20200501090155.GB25400@meh.true.cz>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200501090155.GB25400@meh.true.cz>
X-PGP-Key: https://gist.githubusercontent.com/ynezz/477f6d7a1623a591b0806699f9fc8a27/raw/a0878b8ed17e56f36ebf9e06a6b888a2cd66281b/pgp-key.pub
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200507_001914_899860_AEE2CD0F 
X-CRM114-Status: UNSURE (   7.17  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: Re: [OpenWrt-Devel] [18.06][PATCH 2/2] wireguard: bump to
 1.0.20200401
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
Reply-To: Petr =?utf-8?Q?=C5=A0tetiar?= <ynezz@true.cz>
Cc: openwrt-devel@lists.openwrt.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

UGV0ciDFoHRldGlhciA8eW5lenpAdHJ1ZS5jej4gWzIwMjAtMDUtMDEgMTE6MDE6NTVdOgoKSGks
Cgo+ID4gRnJvbTogIkphc29uIEEuIERvbmVuZmVsZCIgPEphc29uQHp4MmM0LmNvbT4KPiA+IAo+
ID4gUmVjZW50IGJhY2twb3J0cyB0byA1LjUgYW5kIDUuNCBicm9rZSBvdXIgY29tcGF0IGxheWVy
LiBUaGlzIHJlbGVhc2UgaXMKPiA+IHRvIGtlZXAgdGhpbmdzIHJ1bm5pbmcgd2l0aCB0aGUgbGF0
ZXN0IHVwc3RyZWFtIHN0YWJsZSBrZXJuZWxzLgo+IAo+IEkgdGhpbmssIHRoYXQgdGhpcyBpcyBh
IG5vdCBhY2NlcHRhYmxlIGZvciAxOC4wNi4KCmFuZCBJIHdhcyB3cm9uZyBhcyBKYXNvbiBleHBs
YWluZWQgdG9kYXkgdG8gbWUgb24gSVJDOgoKICJteSB2aWV3IGlzIHRoYXQgZm9yIGEgbG9uZyB0
aW1lIHdpcmVndWFyZCB3YXMgaW4gZGV2ZWxvcG1lbnQgYXQgYSB2ZXJ5IHJhcGlkCiBwYWNlLCBh
bmQgaXQgd2FzIHJlYWxseSBjb29sIG9mIG9wZW53cnQgdG8gdGFrZSB3aXJlZ3VhcmQgb24gZHVy
aW5nIGl0cyBlYXJseQogc3RhZ2VzLiByZWNlbnRseSB3aXJlZ3VhcmQgaGFzIHN0YWJpbGl6ZWQg
YW5kIGJlY29tZSBpbnRlZ3JhdGVkIGludG8gdGhlIGxpbnV4CiBrZXJuZWwsIHdoZXJlIHRoZSBj
aHVybiBhbmQgaW1tYXR1cml0eSBpcyBhIHRoaW5nIG9mIHRoZSBwYXN0LiB3aXRoIHRoZQogdXBz
dHJlYW1pbmcsIHdlJ3JlIG5vdyBzcXVhc2hpbmcgaW50ZXJlc3RpbmcgYnVncyBmcm9tIHRoZSB3
aWRlciBhcnJheSBvZgogdGVzdGVycy4gdGhpcyBsZWFkcyBtZSB0byB0aGluayB0aGF0IGV2ZXJ5
dGhpbmcgYmVmb3JlIG5vdyB3YXMgdXR0ZXJseSBicm9rZW4KIGJ1Z2d5IGdhcmJhZ2UsIGFuZCB0
aGF0IHdoYXQncyBiZWluZyByZWxlYXNlZCBub3cgZmluYWxseSBoYXMgc29tZSBwb2xpc2ggdG8K
IGl0LiB0aGVyZWZvcmUsIGknZCBzdHJvbmdseSBlbmNvdXJhZ2UgeW91IHRvIGJhY2twb3J0IHRo
ZSBsYXRlc3QgdG8gYWxsIHRoZQogc3RhYmxlIHJlbGVhc2VzIgoKU28gSSdtIGdvaW5nIHRvIGJ1
bXAgV2lyZUd1YXJkIHRvIHRoZSBsYXRlc3QgcmVsZWFzZSBpbiAxOS4wNyBhbmQgMTguMDYuCgot
LSB5bmV6egoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
b3BlbndydC1kZXZlbCBtYWlsaW5nIGxpc3QKb3BlbndydC1kZXZlbEBsaXN0cy5vcGVud3J0Lm9y
ZwpodHRwczovL2xpc3RzLm9wZW53cnQub3JnL21haWxtYW4vbGlzdGluZm8vb3BlbndydC1kZXZl
bAo=
