Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EB9B61594B4
	for <lists+openwrt-devel@lfdr.de>; Tue, 11 Feb 2020 17:21:28 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NoXxAZvmfIh1xaqtswOvPFuC8JXkKCCD1CfOsi9dT8Q=; b=WsPNDxnwhK61+I
	VX/P6eRke98VDMfJvB6lMgSSlXLqd2qUdpAYEtGzZRy5hU2/CFjE9UJGAk2/dgl4WwoU7FRpzDGHf
	K3+tlxpfwKbwjoeONTxPkRzxafwHLzxxvuV1C09qKbR2i77jshubzr0B77qcmrl8VqQktJOh67zKG
	aYsNjlKtdWJsSCX8xLqtt8wILstzj/AlPo/ictLs5ws7OeKZqtXYGy4fn8eZVaKxtPkc0HUa+Nqy5
	XrPw1kgSuWRaWXvJ5cS3w75wsykPjZMIpQknbZafz5I49YRNvByPbcZvjkuy1ZuOLC82VmNbOvUan
	O0j6mpJ+6b+kkQ3wQCng==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j1YHt-0001M3-60; Tue, 11 Feb 2020 16:21:25 +0000
Received: from nbd.name ([2a01:4f8:221:3d45::2])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j1YHm-0001LM-4K
 for openwrt-devel@lists.openwrt.org; Tue, 11 Feb 2020 16:21:21 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=nbd.name;
 s=20160729; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 MIME-Version:Date:Message-ID:From:References:To:Subject:Sender:Reply-To:Cc:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=ukJIPLpt8KJCk8+ny40xY4y8hpnfFddxupXX8vnSaSE=; b=fBEQefLySfBfjDghv7lVQVO1uh
 G9bZibWxuRyR1y/edy/6zktgwmBvxuja+uLjEWAnS6leytrLou3ceRhluKz0trdKdRhL/MvaU9YB0
 OB2UjFtiL4GE86/eamBSyEPxG4SzbvOwR9Xttj3hnuZNGeqCaEYx+WqqOiknaqaiyGfw=;
Received: from p54ae9227.dip0.t-ipconnect.de ([84.174.146.39] helo=nf.local)
 by ds12 with esmtpsa (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128)
 (Exim 4.89) (envelope-from <nbd@nbd.name>)
 id 1j1YHi-0008By-S1; Tue, 11 Feb 2020 17:21:14 +0100
To: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>,
 OpenWrt Development List <openwrt-devel@lists.openwrt.org>
References: <CACna6rzSoJmDadcXO5zwrjo2Xzrw-quL1edE9bqO_Whq6nSPmQ@mail.gmail.com>
 <CACna6ryoz=-om7KbHiS+1YfP5jzQE_iByP269q4eH7Z3Xv4x5w@mail.gmail.com>
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
Message-ID: <23346684-1faa-a03d-6347-a78ef610ddff@nbd.name>
Date: Tue, 11 Feb 2020 17:21:14 +0100
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.14; rv:68.0)
 Gecko/20100101 Thunderbird/68.4.2
MIME-Version: 1.0
In-Reply-To: <CACna6ryoz=-om7KbHiS+1YfP5jzQE_iByP269q4eH7Z3Xv4x5w@mail.gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200211_082119_912057_11F7ADEC 
X-CRM114-Status: GOOD (  11.58  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
Subject: Re: [OpenWrt-Devel] Wireless monitor interface causes device to run
 out of memory
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

T24gMjAyMC0wMi0xMSAxNzowMywgUmFmYcWCIE1pxYJlY2tpIHdyb3RlOgo+IE9uIFdlZCwgNSBG
ZWIgMjAyMCBhdCAxMToxNCwgUmFmYcWCIE1pxYJlY2tpIDx6YWplYzVAZ21haWwuY29tPiB3cm90
ZToKPj4gSSBub3RpY2VkIHRoYXQgbXkgYmNtNTN4eCBkZXZpY2VzIHJ1biBvdXQgb2YgbWVtb3J5
IGFmdGVyIHJ1bm5pbmcKPj4gd2lyZWxlc3MgbW9uaXRvciBpbnRlcmZhY2UgZm9yIGFib3V0IDIg
ZGF5cy4KPj4KPj4gVGhpcyBwcm9ibGVtIG9jY3VycyBzaW5jZSAwNjk0ZDA4Yzg0ZmQgKCJiY201
M3h4OiBzd2l0Y2ggdG8ga2VybmVsCj4+IDQuOSIpIHdoaWNoIGJ1bXBlZCBrZXJuZWwgZnJvbSA0
LjQuNTMgdG8gNC45LjE0IGFuZCBpcyBzdGlsbCBwcmVzZW50Cj4+IHdoZW4gdXNpbmcgNC4xNC4K
Pj4KPj4gSW50ZXJlc3RpbmdseSB0aGlzIG1lbW9yeSBkcmFpbiByZXF1aXJlcyBhdCBsZWFzdCBv
bmUgb2Y6Cj4+IG5ldC5pcHY2LmNvbmYuZGVmYXVsdC5mb3J3YXJkaW5nPTEKPj4gbmV0LmlwdjYu
Y29uZi5hbGwuZm9yd2FyZGluZz0xCj4+IHRvIGJlIHNldC4gT3BlbldydCBoYXBwZW5zIHRvIHVz
ZSBib3RoIGJ5IGRlZmF1bHQuCj4+Cj4+IFRoaXMgaXMgKm5vdCogYSBtZW1vcnkgbGVhay4gUmVz
dGFydGluZyB3aXJlbGVzcyBpbnRlcmZhY2VzIGZyZWVzIGFsbAo+PiBjb25zdW1lZCBtZW1vcnku
Cj4+Cj4+IEFueSBpZGVhIHdoYXQgbWF5IGJlIGNhdXNpbmcgdGhpcz8KPiAKPiBUaGlzIHJlZ3Jl
c3Npb24gaXMgY2F1c2VkIGJ5IDE2NjZkNDllMWQ0MSAoIm1sZDogZG8gbm90IHJlbW92ZSBtbGQK
PiBzb3VjZSBsaXN0IGluZm8gd2hlbiBzZXQgbGluayBkb3duIikgd2hpY2ggd2FzIGxhdGVyIGJh
Y2twb3J0ZWQgYXMKPiA1M2E3NmQ2MzNiODYgdG8gdGhlIGxpbnV4LTQuOS55IGJyYW5jaC4KPiAK
PiBSZXZlcnRpbmcgdGhhdCBjb21taXQgZnJvbSA0LjkuMTQgb3IgNC4xNC4xNjkgL2ZpeGVzLyBk
ZXZpY2UgcnVubmluZwo+IG91dCBvZiBtZW1vcnkgcHJvYmxlbS4KTG9va3MgbGlrZSBpdCdzIG1p
c3NpbmcgYSBiYWNrcG9ydCBvZgoKY29tbWl0IGE4NGQwMTY0Nzk4OTZiNTUyNmEyY2M1NDc4NGU2
ZmZjNDFjOWQ2ZjYKIltQQVRDSCBuZXRdIG1sZDogZml4IG1lbW9yeSBsZWFrIGluIG1sZF9kZWxf
ZGVscmVjKCkiCgotIEZlbGl4CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpvcGVud3J0LWRldmVsIG1haWxpbmcgbGlzdApvcGVud3J0LWRldmVsQGxpc3Rz
Lm9wZW53cnQub3JnCmh0dHBzOi8vbGlzdHMub3BlbndydC5vcmcvbWFpbG1hbi9saXN0aW5mby9v
cGVud3J0LWRldmVsCg==
