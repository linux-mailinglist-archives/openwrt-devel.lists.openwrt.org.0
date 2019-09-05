Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D0D8A9A61
	for <lists+openwrt-devel@lfdr.de>; Thu,  5 Sep 2019 08:11:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:Message-ID:
	From:References:To:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=cwjPUCABHWoDNSSz0QbBLXyjJLegR/sINAT45pe3Wdk=; b=EY7Xz8D7AvdthO7IS/1+bXhQX
	sFK4662EUQR8w1Ur7kVtQjlZnuGg7Zwkebb4jELDFmoYZzTQ32Xww7a6Mn6wPqfVIMexghWigfrBs
	KwIo7yVz9qZvk8Pgzcl5JEfQYpjqVY0kREz9OBQ+mplmMKHN9etF+y4ccT+KJOvMbX1QI/IYlHcSH
	WQPupB2sbNVaAqxqvuZghonCm18ajSgYw1YIk3jkTe8s90Eahr95XMqXeq6YNJza+40bOItn/f8Yg
	lK/HRX+cnRv4GS8VbTSc5yfcsRkCh2S7hqdvOxg0XdVTiyQwCpCul7mR1tA7LPDsdVXvJKKNR3MJa
	fXAFXdK/Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5kz6-0006Yg-Av; Thu, 05 Sep 2019 06:11:08 +0000
Received: from mail-wr1-x42d.google.com ([2a00:1450:4864:20::42d])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i5kyp-0006YK-L2
 for openwrt-devel@lists.openwrt.org; Thu, 05 Sep 2019 06:10:53 +0000
Received: by mail-wr1-x42d.google.com with SMTP id s18so1187414wrn.1
 for <openwrt-devel@lists.openwrt.org>; Wed, 04 Sep 2019 23:10:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=kresin-me.20150623.gappssmtp.com; s=20150623;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=tzkbHnVu20LTsdonvyTUArl3hOV8wpG5awxDajn/riM=;
 b=G4XTNVT33X9KZk6tlXU8Kl8nsLgthLa1urH5JBVTYI2nI/dyGHeL8FuZxYqusmV9ZP
 LseceZCFyWTs0Zamavx0Qo5uEI3d2G1W40aWEW+1veUvuZ79RYXIf9hdiHGGpkidZEMk
 ossbEzcXl1WJvZ3hQrViH1wrUuw4Uafr9cZ/rhn5kPUeeVaC9DlbhWHpq4mA6wITIwj5
 VsUv69lXfx9pIJHgY+IWXFc6D4WtaVddpogaCse183L6xXeMiVE7bRUcn758HgTV8Mo0
 PirpNdF/USWK2AaklbnqwaOrM4O9VKEAG3sYL2i6Qw/R6EXPye8PkVIAm7sQ/4q4AJDa
 UcDw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=tzkbHnVu20LTsdonvyTUArl3hOV8wpG5awxDajn/riM=;
 b=Y4q7XjGFO5BjkrAcH4inM7vLqRrTjqLw0dCxsw1aR9o63YA0YEEbMGmOwnwNlzbgkv
 89OajvfSSI6QyR+Y6iNzWZjlNCVqyx/g5v99YDn5LkkUWkZw24brUxZh8PkCwmlwt2Ic
 IP+1vy63nEhQAI9ADTYsWz2Z8METCrn0zNweW7gr0vIYGMBRl3xjpbvdH3cAk+9fNNqE
 xYpmyJs9Gnev5VFzPegbiZskix8u0dB/w8l0qOUchnwhmaLT03y0hiH/czCzhR38bQ7T
 yvJLepiU4cm8k7An8yZ5wwuhdrxgGAnhNNLTM+zVPHp+ELlJmjzdLJojDD7xMkYTpBnT
 ZKLQ==
X-Gm-Message-State: APjAAAXFxfdgbyNK9R0dE2xGWrSDKiqDt4CHWxFT41ol1mVG7uZCRncg
 glXcGRXFOIWVCR4PfEXMeMmLWDDwyI0=
X-Google-Smtp-Source: APXvYqxj+dmsVBNOF8z6ZaCZHmfbCS1deIcyK9fsXsWey+aq2kXCqrbAl3W97zN5LddHeJQIiCpWdw==
X-Received: by 2002:adf:eb4b:: with SMTP id u11mr1059408wrn.121.1567663848917; 
 Wed, 04 Sep 2019 23:10:48 -0700 (PDT)
Received: from ?IPv6:2003:ec:2f0d:4a00:2487:26b9:aa1c:a0b0?
 (p200300EC2F0D4A00248726B9AA1CA0B0.dip0.t-ipconnect.de.
 [2003:ec:2f0d:4a00:2487:26b9:aa1c:a0b0])
 by smtp.gmail.com with ESMTPSA id y14sm1395773wrd.84.2019.09.04.23.10.47
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 04 Sep 2019 23:10:48 -0700 (PDT)
To: Enrico Mioso <mrkiko.rs@gmail.com>, Hauke Mehrtens <hauke@hauke-m.de>
References: <alpine.LNX.2.21.99999.352.1909020530360.2689@localhost.localdomain>
 <alpine.LNX.2.21.99999.352.1909020624220.2925@localhost.localdomain>
 <919fe9ff-bdf6-e3a4-1dfc-ca53284b5986@hauke-m.de>
 <alpine.LNX.2.21.99999.352.1909041159540.3532@localhost.localdomain>
From: Mathias Kresin <dev@kresin.me>
Message-ID: <0d225f83-97ae-d3b3-4f56-9803f9b4f80f@kresin.me>
Date: Thu, 5 Sep 2019 08:10:46 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <alpine.LNX.2.21.99999.352.1909041159540.3532@localhost.localdomain>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190904_231051_718894_05CD9B82 
X-CRM114-Status: GOOD (  10.70  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:42d listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
Subject: Re: [OpenWrt-Devel] AR10 GPHYs (WAS: Re: [lantiq] general help on
 AR10 platform)
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
Cc: openwrt-devel@lists.openwrt.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

MDQvMDkvMjAxOSAxMjowNywgRW5yaWNvIE1pb3NvOgo+IEhpIHRoZXJlIQo+IAo+IFNvIEkgYW0g
dHJ5aW5nIHRvIGdldCBldGhlcm5ldCB3b3JraW5nIG9uIHRoaXMgQVIxMCBkZXZpY2UuCj4gSXQg
aGFzIDMgR1BIWXM6Cj4gCj4gIMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgZ3BoeTA6IGdwaHlAMjAg
ewo+ICDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgY29tcGF0aWJsZSA9ICJsYW50aXEs
eHJ4MzAwLWdwaHkiOwo+ICDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgcmVnID0gPDB4
MjAgMHg0PjsKPiAKPiAgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHJlc2V0cyA9IDwm
cmVzZXQwIDMxIDMwPiwgPCZyZXNldDEgNyA3PjsKPiAgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgIHJlc2V0LW5hbWVzID0gImdwaHkiLCAiZ3BoeTIiOwo+ICDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgIH07Cj4gCj4gIMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgZ3BoeTE6IGdwaHlANTggewo+
ICDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgY29tcGF0aWJsZSA9ICJsYW50aXEseHJ4
MzAwLWdwaHkiOwo+ICDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgcmVnID0gPDB4NTgg
MHg0PjsKPiAKPiAgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHJlc2V0cyA9IDwmcmVz
ZXQwIDI5IDI4PiwgPCZyZXNldDEgNiA2PjsKPiAgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgIHJlc2V0LW5hbWVzID0gImdwaHkiLCAiZ3BoeTIiOwo+ICDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgIH07Cj4gCj4gIMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgZ3BoeTI6IGdwaHlAYWMgewo+ICDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgY29tcGF0aWJsZSA9ICJsYW50aXEseHJ4MzAw
LWdwaHkiOwo+ICDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgcmVnID0gPDB4YWMgMHg0
PjsKPiAgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHJlc2V0cyA9IDwmcmVzZXQwIDI3
IDI2PiwgPCZyZXNldDEgNSA1PjsKPiAgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHJl
c2V0LW5hbWVzID0gImdwaHkiLCAiZ3BoeTIiOwo+ICDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIH07
Cj4gCj4gQW5kIGZpcm13YXJlIGxvYWQgYWRkcmVzc2VzIGZvciBHUEhZcyBhcmUgY29ycmVjdCBh
cyBwZXIgdGhlIHZlbmRvciBjb2RlOgo+ICNkZWZpbmUgSUZYX1JDVV9HUEhZMF9GV19BRERSwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgICgodm9sYXRpbGUgdTMyKikoSUZYX1JD
VSAKPiArIDB4MDAyMCkpCj4gI2RlZmluZSBJRlhfUkNVX0dQSFkxX0ZXX0FERFLCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgKCh2b2xhdGlsZSB1MzIqKShJRlhfUkNVIAo+ICsg
MHgwMDU4KSkKPiAjZGVmaW5lIElGWF9SQ1VfR1BIWTJfRldfQUREUsKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoCAoKHZvbGF0aWxlIHUzMiopKElGWF9SQ1UgCj4gKyAweDAwQUMp
KQo+IAo+IEJ1dCBkcml2ZXIgd2FzIGZhaWxpbmcgdG8gaW5pdGlhbGl6ZSBkdWUgdG8gbWlzc2lu
ZyBjbG9jayBnYXRlcy4KPiBJbiBzeXNjdHJsLmMsIHdlIGhhdmU6Cj4gY2xrZGV2X2FkZF9wbXUo
IjFmMjAzMDIwLmdwaHkiLCBOVUxMLCAxLCAwLCBQTVVfR1BIWSk7IC8vIE9LIGZvciBHUEhZMAo+
IGNsa2Rldl9hZGRfcG11KCIxZjIwMzA2OC5ncGh5IiwgTlVMTCwgMSwgMCwgUE1VX0dQSFkpOyAv
L3Byb2JsZW0gZm9yIEdQSFkxCgpUaGUgZmlyc3QgcGFyYW1ldGVyIG9mIGNsa2Rldl9hZGRfcG11
IGRvZXNuJ3QgbWF0Y2ggeW91ciBkdHMuIEl0IGhhcyB0byAKYmUgIjFmMjAzMDU4LmdwaHkiCgpS
ZWdhcmRzCk1hdGhpYXMKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCm9wZW53cnQtZGV2ZWwgbWFpbGluZyBsaXN0Cm9wZW53cnQtZGV2ZWxAbGlzdHMub3Bl
bndydC5vcmcKaHR0cHM6Ly9saXN0cy5vcGVud3J0Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL29wZW53
cnQtZGV2ZWwK
