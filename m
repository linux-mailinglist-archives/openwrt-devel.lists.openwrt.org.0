Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 00E171E095C
	for <lists+openwrt-devel@lfdr.de>; Mon, 25 May 2020 10:52:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=94Xjz1JZ35pyqr6De9pgbIkD++iZzwgPKNL1fl4XXtM=; b=FNPb7ExhUMqUwE
	Gip2ZiKQFq7TtVzjM9zuOVbvB2i9WpmEMWvCc0YkOw/A8kkNUUVehVin6srv+BBJ19k5hRKkWE4YF
	zbl3kqX/vI6IVW9JybqsyroAFU16ie0nYlLrYQLE8QBy2Haambquj/KB3ma0XHiABhpgXdOfr0TRN
	MRgRsz1nbzkGLzrXoDzseiFS4bcjSqHY+s7qjhxz9lp7VCvgYekv//OcXCf5Zc7VsnrlGtClyA63t
	rLpJXOlno2oo7uimjzOZKN6a6GCNFWz07zsTI5bLYAwOe/Fo+hJZJ5+HAafpwjK13DLSp5/HDu0R4
	ZLemTP+16t5IftgnLqlQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jd8pt-0007z2-BW; Mon, 25 May 2020 08:51:53 +0000
Received: from nbd.name ([2a01:4f8:221:3d45::2])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jd8pi-0007yY-Gd
 for openwrt-devel@lists.openwrt.org; Mon, 25 May 2020 08:51:44 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=nbd.name;
 s=20160729; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 MIME-Version:Date:Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=6KhfxpllBe36vos9XKl1Sk7uwD+x4+9DkbdbejOIse8=; b=K53uBtE8aBWXkiWVegt9J35kUR
 l3OXm2FnuerDqEEvGpWP1b5q8SSC1bN85jQYnY/njiFwsHlPQcNOBoB6evW2YT1iPN69uOzp87p2g
 9JID8zWBHNxoAGdtPApwL20GC/19vbUs2+i2cs22ADBw0kFb3x0nyJ+wnEbEVvJB7cho=;
Received: from p5b206c3b.dip0.t-ipconnect.de ([91.32.108.59] helo=nf.local)
 by ds12 with esmtpsa (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128)
 (Exim 4.89) (envelope-from <nbd@nbd.name>)
 id 1jd8pc-00026S-S3; Mon, 25 May 2020 10:51:36 +0200
To: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>,
 openwrt-devel@lists.openwrt.org
References: <20200525083106.30473-1-zajec5@gmail.com>
From: Felix Fietkau <nbd@nbd.name>
Autocrypt: addr=nbd@nbd.name; prefer-encrypt=mutual; keydata=
 xsDiBEah5CcRBADIY7pu4LIv3jBlyQ/2u87iIZGe6f0f8pyB4UjzfJNXhJb8JylYYRzIOSxh
 ExKsdLCnJqsG1PY1mqTtoG8sONpwsHr2oJ4itjcGHfn5NJSUGTbtbbxLro13tHkGFCoCr4Z5
 Pv+XRgiANSpYlIigiMbOkide6wbggQK32tC20QxUIwCg4k6dtV/4kwEeiOUfErq00TVqIiEE
 AKcUi4taOuh/PQWx/Ujjl/P1LfJXqLKRPa8PwD4j2yjoc9l+7LptSxJThL9KSu6gtXQjcoR2
 vCK0OeYJhgO4kYMI78h1TSaxmtImEAnjFPYJYVsxrhay92jisYc7z5R/76AaELfF6RCjjGeP
 wdalulG+erWju710Bif7E1yjYVWeA/9Wd1lsOmx6uwwYgNqoFtcAunDaMKi9xVQW18FsUusM
 TdRvTZLBpoUAy+MajAL+R73TwLq3LnKpIcCwftyQXK5pEDKq57OhxJVv1Q8XkA9Dn1SBOjNB
 l25vJDFAT9ntp9THeDD2fv15yk4EKpWhu4H00/YX8KkhFsrtUs69+vZQwc0cRmVsaXggRmll
 dGthdSA8bmJkQG5iZC5uYW1lPsJgBBMRAgAgBQJGoeQnAhsjBgsJCAcDAgQVAggDBBYCAwEC
 HgECF4AACgkQ130UHQKnbvXsvgCgjsAIIOsY7xZ8VcSm7NABpi91yTMAniMMmH7FRenEAYMa
 VrwYTIThkTlQzsFNBEah5FQQCACMIep/hTzgPZ9HbCTKm9xN4bZX0JjrqjFem1Nxf3MBM5vN
 CYGBn8F4sGIzPmLhl4xFeq3k5irVg/YvxSDbQN6NJv8o+tP6zsMeWX2JjtV0P4aDIN1pK2/w
 VxcicArw0VYdv2ZCarccFBgH2a6GjswqlCqVM3gNIMI8ikzenKcso8YErGGiKYeMEZLwHaxE
 Y7mTPuOTrWL8uWWRL5mVjhZEVvDez6em/OYvzBwbkhImrryF29e3Po2cfY2n7EKjjr3/141K
 DHBBdgXlPNfDwROnA5ugjjEBjwkwBQqPpDA7AYPvpHh5vLbZnVGu5CwG7NAsrb2isRmjYoqk
 wu++3117AAMFB/9S0Sj7qFFQcD4laADVsabTpNNpaV4wAgVTRHKV/kC9luItzwDnUcsZUPdQ
 f3MueRJ3jIHU0UmRBG3uQftqbZJj3ikhnfvyLmkCNe+/hXhPu9sGvXyi2D4vszICvc1KL4RD
 aLSrOsROx22eZ26KqcW4ny7+va2FnvjsZgI8h4sDmaLzKczVRIiLITiMpLFEU/VoSv0m1F4B
 FtRgoiyjFzigWG0MsTdAN6FJzGh4mWWGIlE7o5JraNhnTd+yTUIPtw3ym6l8P+gbvfoZida0
 TspgwBWLnXQvP5EDvlZnNaKa/3oBes6z0QdaSOwZCRA3QSLHBwtgUsrT6RxRSweLrcabwkkE
 GBECAAkFAkah5FQCGwwACgkQ130UHQKnbvW2GgCfTKx80VvCR/PvsUlrvdOLsIgeRGAAn1ee
 RjMaxwtSdaCKMw3j33ZbsWS4
Message-ID: <cac37be8-7340-76b3-4c98-eacd9e3fd24a@nbd.name>
Date: Mon, 25 May 2020 10:51:36 +0200
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.14; rv:68.0)
 Gecko/20100101 Thunderbird/68.8.0
MIME-Version: 1.0
In-Reply-To: <20200525083106.30473-1-zajec5@gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200525_015142_710661_FCCC910E 
X-CRM114-Status: UNSURE (   9.17  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
Subject: Re: [OpenWrt-Devel] [PATCH RFC libubox] blobmsg: another attrs
 iteration fix for blobmsg_check_array_len()
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
Cc: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <rafal@milecki.pl>,
 Chris Nisbet <nischris@gmail.com>, Jo-Philipp Wich <jo@mein.io>,
 =?UTF-8?Q?Petr_=c5=a0tetiar?= <ynezz@true.cz>, John Crispin <john@phrozen.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

T24gMjAyMC0wNS0yNSAxMDozMSwgUmFmYcWCIE1pxYJlY2tpIHdyb3RlOgo+IEZyb206IFJhZmHF
giBNacWCZWNraSA8cmFmYWxAbWlsZWNraS5wbD4KPiAKPiBBZnRlciBtb3JlIHJldmlld3MgaXMg
c2VlbXMgdGhhdCBibG9ibXNnX2Zvcl9lYWNoX2F0dHIoKSBzaG91bGQgbm90IGJlCj4gdXNlZCB3
aGVuIGRlYWxpbmcgd2l0aCB1bnRydXN0ZWQgZGF0YSBhcyBpdCByZWFkcyBsZW5ndGggZnJvbSBi
bG9iIGRhdGEKPiBpdHNlbGYuIEl0IG1lYW5zIGl0IGNhbid0IGJlIHVzZWQgaW4gdGhlIGJsb2Jt
c2dfY2hlY2tfYXJyYXlfbGVuKCkuCj4gCj4gU3dpdGNoIGJhY2sgdG8gdXNpbmcgX19ibG9ibXNn
X2Zvcl9lYWNoX2F0dHIoKSBCVVQgcGFzcyBjb3JyZWN0IGxlbmd0aAo+IHRvIGl0LiBDYWxjdWxh
dGUgaXQgYnkgc3VidHJhY3RpbmcgaGVhZGVyIGxlbmd0aCBmcm9tIGJsb2IgbGVuZ3RoLgpUaGlz
IHNob3VsZCBub3QgYmUgbmVjZXNzYXJ5LCBiZWNhdXNlIHRoZSBsZW5ndGggaXMgdmFsaWRhdGVk
IGluIHRoZQpibG9ibXNnX2NoZWNrX2F0dHJfbGVuIGNhbGwgZWFybGllciBpbiB0aGUgc2FtZSBm
dW5jdGlvbi4KSSB0aGluayB5b3VyIHByZXZpb3VzIGZpeCBpcyBjb21wbGV0ZWx5IGZpbmUgYXMt
aXMuCgotIEZlbGl4CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpvcGVud3J0LWRldmVsIG1haWxpbmcgbGlzdApvcGVud3J0LWRldmVsQGxpc3RzLm9wZW53
cnQub3JnCmh0dHBzOi8vbGlzdHMub3BlbndydC5vcmcvbWFpbG1hbi9saXN0aW5mby9vcGVud3J0
LWRldmVsCg==
