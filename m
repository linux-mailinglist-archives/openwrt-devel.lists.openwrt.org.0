Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C92119ABBB
	for <lists+openwrt-devel@lfdr.de>; Wed,  1 Apr 2020 14:33:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kq55BlguIk5AULfzpTO7WwOzRfMXDxoyARn1HMfLzhA=; b=Tkx5jgX3z5eL6E
	x0scQWelklwrK4kF7osUjee9g7oJtrrOIYtN5ZqXlGkYC51mB6LmfK1IxXle/wbn2QjhgoXFbHqWr
	PqXYdjOTPPVzI2IJzfFWBtN4144if6RyCtjgAhXuGDZCu5pjD5Y+4P7Wjveuq26KlyoYJquh5REo3
	2ALxv/iVfTLUsFcff4nXsJphlKg4TTNvuN4ZIP4XVubdPAZUjDP5Ik7krhhjRtRXLK/Ly/x8gGHiF
	Mk9pMpBhZz2AcTXap7mw7h4teqru/SDYYfSu6Ft0Vdbtoa+RIfgrdc+NT+w0j5rIAAWRmqfEzZaSK
	+N9vsyFVC5liU8uaYTUQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jJcYe-0005ZU-KL; Wed, 01 Apr 2020 12:33:24 +0000
Received: from mx-out.tlen.pl ([193.222.135.158])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJcYU-0005Yf-VS
 for openwrt-devel@lists.openwrt.org; Wed, 01 Apr 2020 12:33:16 +0000
Received: (wp-smtpd smtp.tlen.pl 33198 invoked from network);
 1 Apr 2020 14:33:08 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=o2.pl; s=1024a;
 t=1585744388; bh=tLV9amXPCJAfsrw07n6P330HV72AW7H/P77MAztE050=;
 h=Subject:To:Cc:From;
 b=Tw+M4YRgDP7IZVjvo+FhS6XakILOp1aKhLuMZPTwWIVWviIlPxumzrvNIjiZknCEG
 gypLqTlgJx8iuQYHmEykxjaTkBO8LA03XzYxGgQtNdJN8UBuSiRIsdFtrUS0fGLp5u
 70LZ67tt1dBe+OHgMiDS/koiaxpGuhH/wTjvTmZM=
Received: from unknown (HELO [10.8.0.6]) (tomek_n@o2.pl@[5.2.67.190])
 (envelope-sender <tomek_n@o2.pl>)
 by smtp.tlen.pl (WP-SMTPD) with ECDHE-RSA-AES256-GCM-SHA384 encrypted SMTP
 for <daniel@makrotopia.org>; 1 Apr 2020 14:33:08 +0200
To: Piotr Dymacz <pepe2k@gmail.com>, Tomasz Maciej Nowak <tmn505@gmail.com>,
 Paul Spooren <mail@aparcar.org>, openwrt-devel@lists.openwrt.org
References: <20200331232009.1948083-1-mail@aparcar.org>
 <427c8bc6-3313-e334-f346-73d6dcfe04c5@gmail.com>
 <909b15c0-b36f-db64-8aaf-f12afe539a61@gmail.com>
 <fb5cb860-aee7-a61e-d2ff-6f122f9100b8@gmail.com>
From: Tomasz Maciej Nowak <tomek_n@o2.pl>
Message-ID: <1ca5e93f-b486-61e7-7ac6-7f86fdaf2e3c@o2.pl>
Date: Wed, 1 Apr 2020 14:32:49 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
In-Reply-To: <fb5cb860-aee7-a61e-d2ff-6f122f9100b8@gmail.com>
Content-Language: en-US
X-WP-MailID: 4c9a1cd0df42df2e2327c5b4e3d002e7
X-WP-AV: skaner antywirusowy Poczty o2
X-WP-SPAM: NO 0000000 [0ZOV]                               
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200401_053315_336050_6974D719 
X-CRM114-Status: GOOD (  12.37  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [tomek_n[at]o2.pl]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: Re: [OpenWrt-Devel] [PATCH] mvebu/cortexa9: use Linksys codename as
 PROFILE
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
Cc: Daniel Golle <daniel@makrotopia.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

VyBkbml1IDAxLjA0LjIwMjAgb8KgMTQ6MTUsIFBpb3RyIER5bWFjeiBwaXN6ZToKPiBIaSBUb21h
c3osIFBhdWwsCj4gCj4gT24gMDEuMDQuMjAyMCAxNDowMywgVG9tYXN6IE1hY2llaiBOb3dhayB3
cm90ZToKPj4gVyBkbml1IDAxLjA0LjIwMjAgb8KgMDg6NTUsIFBpb3RyIER5bWFjeiBwaXN6ZToK
Pj4+IEhpIFBhdWwsCj4+Pgo+Pj4gT24gMDEuMDQuMjAyMCAwMToyMCwgUGF1bCBTcG9vcmVuIHdy
b3RlOgo+Pj4+IFRoZSBQUk9GSUxFIG5hbWVzIG9mIG12ZWJ1L2NvcnRleGE5L0xpbmtzeXMgZGV2
aWNlcyBhcmUgYmFzZWQgb24gdGhlCj4+Pj4gY29uc3VtZXIgbmFtZXMgKGxpa2UgbGlua3N5c193
cnQxMjAwYWMpIGluc3RlYWQgb2YgdGhlIHZlbmRvciBjb2RlbmFtZXMKPj4+PiAobGlrZSBsaW5r
c3lzX2NhaW1hbikgd2hpY2ggYXJlIGhvd2V2ZXIgdXNlZCBpbiB0aGUgcmVzdCBvZiB0aGUgYnVp
bGQKPj4+PiBzeXN0ZW0gKHBsYXRoZm9ybS5zaCwgYm9vdGNvdW50LCAwMV9sZWRzKS4KPj4+Pgo+
Pj4+IEEgcnVubmluZyBkZXZpY2UgaXMgbm90IGFibGUgdG8ga25vdyB0aGUgcHJvZmlsZSB1c2Vk
IGZvciBpdHMgZmlybXdhcmUKPj4+PiBjcmVhdGlvbiBhcyBgL3RtcC9zeXNpbmZvL2JvYXJkX25h
bWVgIHBvaW50cyB0byB0aGUgZGV2aWNlIHRyZWUKPj4+PiBpZGVudGlmaWVyIChlcXVhbCB0byBM
aW5rc3lzIGNvZGVuYW1lKSBhbmQgYC90bXAvc3lzaW5mby9tb2RlbGAgaXMgbm90Cj4+Pj4gZGV0
ZXJtaW5pc3RpY2FsbHkgKmNvbnZlcnRpYmxlKiB0byB0aGUgUFJPRklMRSBuYW1lLgo+Pj4+Cj4+
Pj4gVGhlIGludHJvZHVjdGlvbiBvZiBBTFQgdGl0bGVzICg0ZWUzY2YyYjVhKSBhbGxvd3MgdG8g
c3RvcmUgY29uc3VtZXIKPj4+PiBuYW1lcyBhbmQgbWFrZSB0aGVtIGF2YWlsYWJsZSBpbiB0aGUg
YG1lbnVjb25maWdgIHNvIHRoZSBwcm9maWxlIG5hbWUgaXMKPj4+PiB0cmFuc3BhcmVudCB0byBy
ZWd1bGFyIHVzZXJzLgo+Pj4+Cj4+Pj4gVGhpcyBwYXRjaCBjaGFuZ2VzIHRoZSBtdmVidS9jb3J0
ZXhhOS9MaW5rc3lzIFBST0ZJTEVTIHRvIHVzZSB0aGUgZGV2aWNlCj4+Pj4gdHJlZSBpZGVudGlm
aWVyIGFrYSBMaW5rc3lzIGNvZGVuYW1lIGFzIFBST0ZJTEUgbmFtZSBhbmQgdXNlcyB0aGUKPj4+
PiBjb25zdW1lciBuYW1lIGFzIEFMVCB0aXRsZS4KPj4+Cj4+PiBXaGF0IGFib3V0IGZpcm13YXJl
IGZpbGVuYW1lcz8gV291bGRuJ3QgdGhpcyBjaGFuZ2UgY29uZnVzZSBwZW9wbGUgc2VhcmNoaW5n
IGZvciBmaXJtd2FyZSBmaWxlcyBieSBkZXZpY2UgbW9kZWwgbmFtZT8KPj4+Cj4+PiBZb3VyIGNo
YW5nZSBzd2l0Y2ggdGhpcyBmcm9tICdtYW51ZmFjdHVyZXJfbW9kZWwnIGFwcHJvYWNoIHRvICdt
YW51ZmFjdHVyZXJfbWFudWZhY3R1cmVyLWNvZGVuYW1lJy4gRG9lcyBMaW5rc3lzIGV2ZXIgbWVu
dGlvbiB0aGF0IGNvZGVuYW1lcyBvbiB0aGVpciB3ZWJzaXRlLCBpbiBtYXJrZXRpbmcgbWF0ZXJp
YWxzLCBldGMuPwo+Pj4KPj4KPj4gKzEsIG5vdCBldmVuIG9uIHRoZSBkZXZpY2UgaXRzZWxmIHRo
ZXJlJ3MgbWVudGlvbiBhYm91dCB0aGVzZSBjb2RlIG5hbWVzLAo+PiBhbmQgdGhhdCdzIHdoeSBm
cm9tIG1lIHRoYXQncyBhIE5BSy4KPiAKPiBIb3cgYWJvdXQgcGF0Y2hpbmcgZGV2aWNlJ3MgRFRT
ZXMgYW5kIGluY2x1ZGUgJ21hbnVmYWN0dXJlcixtb2RlbCcgdGhlcmUgaW5zdGVhZCAoaW4gZnJv
bnQgb2YgdGhlIGV4aXN0aW5nIG9uZXMpPyBTY3JpcHRzIGluICdiYXNpYy1maWxlcycgd291bGQg
YWxzbyBuZWVkIHRvIGJlIGZpeGVkIGJ1dCB0aGlzIHdheSB3ZSBzYXZlIHRoaXMgKGluIG15IG9w
aW5pb24pIG1pc3VzZSBvZiAnREVWSUNFX0FMVConLgoKWWVzLCB0aGF0IHdvdWxkIGJlIHRoZSBl
YXNpZXN0IHNvbHV0aW9uLCBub3QgaW50cm9kdWNpbmcgY3J5cHRpYyBpbWFnZSBmaWxlIG5hbWVz
LgoKPiAKPiBJJ20gYWxzbyBub3Qgc3VyZSBob3cgbWFueSBkZXZpY2VzIGFyZSBhZmZlY3RlZCBo
ZXJlLCBvbmx5IExpbmtzeXM/Cj4gCgpPbmx5IExpbmtzeXMgYW5kIHJhdGhlciB1bnBvcHVsYXIg
TUFDQ0hJQVRPYmluIChJIGRvbid0IG1lbnRpb24gTWFydmVsbCdzIGRldiBib2FyZHMgYXMgdGhl
c2UgYXJlIHNjYXJjZSkuCkRvbid0IGtub3cgYWJvdXQgb3RoZXIgdGFyZ2V0cy4KCi0tIApUTU4K
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCm9wZW53cnQt
ZGV2ZWwgbWFpbGluZyBsaXN0Cm9wZW53cnQtZGV2ZWxAbGlzdHMub3BlbndydC5vcmcKaHR0cHM6
Ly9saXN0cy5vcGVud3J0Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL29wZW53cnQtZGV2ZWwK
