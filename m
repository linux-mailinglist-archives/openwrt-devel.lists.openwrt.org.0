Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4359A14F266
	for <lists+openwrt-devel@lfdr.de>; Fri, 31 Jan 2020 19:51:33 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sVcYfUP8TkN3MxjIpz2LI2ij6UjpyBVmJpUMhuW+yHQ=; b=h8yl895PAK9Z7Q
	NF3gWOl30n3NYrIFcuE9ScUQFdzZLdVvjXQNgDsryOQ2fhlwoCqr36hGBOvmM5uCkhFDvIqmlCIlI
	dMpHouBKyq/EIbUb1IgbDVNipPicyqL9zDk8o/gxGklNPXUtyZk4o2ZnfOB9fARgdJ1I3K3RBsvDo
	v0np2mE3gA/fxbUL6lfZCj2BqmKPqUR9g9Hy/EEV0H2kCJ2IMxtjsUv6QZJrkvK7n2IlzbPzXXorW
	4Atht0qxQYytOUs09xUl6SJt/cQdyTLvM1ETHlgR1jVKvdn2cQNsde/QVKalE3KOJIngY0AEHqj35
	2Nwl7u9inyU4FIIDpn7g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ixbO6-0006hy-J2; Fri, 31 Jan 2020 18:51:30 +0000
Received: from nbd.name ([2a01:4f8:221:3d45::2])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ixbNz-0006hd-4n
 for openwrt-devel@lists.openwrt.org; Fri, 31 Jan 2020 18:51:24 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=nbd.name;
 s=20160729; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 MIME-Version:Date:Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=mFLLcRlCJ1eKOpmyTadejEMs/f3eDtEZF8sCMzKckVc=; b=Uvg1dzeWZ1ZwVUh6ERn5Qti+aa
 /KzT0qWeY2RO3tURPJXsEEMKIsw1FXW1UU4B3x92/5MBYEHc6QNAYjIiUws2GtFfau+Qw8uc3fe6M
 08O5S7cfT1NIbMFeFwCxJm8Tx//H6qvMt/YuEQynr2s/BL9wIAGmXpEuEpL+leEUvxpQ=;
Received: from [80.255.7.125] (helo=nf.local)
 by ds12 with esmtpsa (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128)
 (Exim 4.89) (envelope-from <nbd@nbd.name>)
 id 1ixbNw-0003Rh-Oe; Fri, 31 Jan 2020 19:51:20 +0100
To: =?UTF-8?Q?Petr_=c5=a0tetiar?= <ynezz@true.cz>,
 Rosen Penev <rosenp@gmail.com>
References: <20200122230022.16876-1-rosenp@gmail.com>
 <87h80mfukb.fsf@miraculix.mork.no>
 <CAKxU2N-BcqJp6jiKz7mjFN0BujjQOMEv39jSffxCEKuKhZg2Qw@mail.gmail.com>
 <20200129162210.GA78186@meh.true.cz>
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
Message-ID: <47e09723-651a-abc6-2c2f-9552c3944e3c@nbd.name>
Date: Fri, 31 Jan 2020 19:51:19 +0100
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.14; rv:68.0)
 Gecko/20100101 Thunderbird/68.4.2
MIME-Version: 1.0
In-Reply-To: <20200129162210.GA78186@meh.true.cz>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200131_105123_387399_ECE867B2 
X-CRM114-Status: GOOD (  15.45  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
Subject: Re: [OpenWrt-Devel] [PATCH] ramips: ethernet: turn off flow control
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
Cc: OpenWrt Development List <openwrt-devel@lists.openwrt.org>,
 =?UTF-8?Q?Bj=c3=b8rn_Mork?= <bjorn@mork.no>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

T24gMjAyMC0wMS0yOSAxNzoyMiwgUGV0ciDFoHRldGlhciB3cm90ZToKPiBSb3NlbiBQZW5ldiA8
cm9zZW5wQGdtYWlsLmNvbT4gWzIwMjAtMDEtMjUgMTU6MDQ6MDNdOgo+IAo+IEhpIEJqw7hybiBh
bmQgUm9zZW4sCj4gCj4+IE9uIFRodSwgSmFuIDIzLCAyMDIwIGF0IDEyOjI1IEFNIEJqw7hybiBN
b3JrIDxiam9ybkBtb3JrLm5vPiB3cm90ZToKPj4gPiA+Cj4+ID4gPiAtICAgICBpZiAoKHJ0X3N5
c2NfcjMyKFNZU0NfUkVHX0NISVBfUkVWX0lEKSAmIDB4RkZGRikgPT0gMHgwMTAxKSB7Cj4+ID4g
PiAtICAgICAgICAgICAgIC8qIChHRTEsIEZvcmNlIDEwMDBNL0ZELCBGQyBPTiwgTUFYX1JYX0xF
TkdUSCAxNTM2KSAqLwo+PiA+ID4gKyAgICAgaWYgKChydF9zeXNjX3IzMihTWVNDX1JFR19DSElQ
X1JFVl9JRCkgJiAweEZGRkYpID49IDB4MDEwMSkgewo+PiA+ID4gKyAgICAgICAgICAgICAvKiAo
R0UxLCBGb3JjZSAxMDAwTS9GRCwgRkMgT0ZGLCBNQVhfUlhfTEVOR1RIIDE1MzYpICovCj4+ID4g
PiAgICAgICAgICAgICAgIG10a19zd2l0Y2hfdzMyKGdzdywgMHgyMzA1ZTMwYiwgR1NXX1JFR19N
QUNfUDBfTUNSKTsKPj4gPiA+ICAgICAgICAgICAgICAgbXQ3NTMwX21kaW9fdzMyKGdzdywgMHgz
NjAwLCAweDVlMzBiKTsKPj4gPiA+ICAgICAgIH0gZWxzZSB7Cj4+ID4KPj4gPiBJZiB0aGF0J3Mg
cmVhbGx5IGhlbHBpbmcgdGhlbiBJIGJlbGlldmUgaXQgd291bGQgYmUgdXNlZnVsIHRvIGFkZCBz
b21lCj4+ID4gc29ydCBvZiBjaGlwX3Jldl9pZCBwcmludGsgaGVyZS4gIFdvdWxkIGJlIGdvb2Qg
dG8ga25vdyB3aG8gaGl0cyB0aGlzCj4+ID4gYW5kIHdoeS4uLgo+IAo+IEkganVzdCBxdWlja2x5
IHNraW1tZWQgdGhyb3VnaCB0aGUgY29kZSBhbmQgaXQgc2VlbXMgbGlrZSB3ZSd2ZSB0aGF0Cj4g
aW5mb3JtYXRpb24gYWxyZWFkeSBpbiBkbWVzZzoKPiAKPiAgU29DIFR5cGU6IE1lZGlhVGVrIE1U
NzY4OCB2ZXI6MSBlY286MiAgICA9IDB4MDEwMgo+ICBTb0MgVHlwZTogTWVkaWFUZWsgTVQ3NjI4
QU4gdmVyOjEgZWNvOjIgID0gMHgwMTAyCj4gIFNvQyBUeXBlOiBNZWRpYVRlayBNVDc2MjEgdmVy
OjEgZWNvOjMgICAgPSAweDAxMDMKPiAgU29DIFR5cGU6IE1lZGlhVGVrIE1UNzYyMEEgdmVyOjIg
ZWNvOjMgICA9IDB4MDIwMwo+ICBTb0MgVHlwZTogTWVkaWFUZWsgTVQ3NjIwTiB2ZXI6MiBlY286
NiAgID0gMHgwMjA2Cj4gCj4+IFRoYXQncyBqdXN0IGNvc21ldGljLgo+IAo+ICBjdXJyZW50OiA9
PSAweDAxMDEKPiAgbmV3OiAgICAgPj0gMHgwMTAxCj4gCj4gRG9lc24ndCBsb29rIGxpa2UgYSBj
b3NtZXRpYyBjaGFuZ2Ugbm9yIGNvcnJlY3QsIHNlZSBhYm92ZSBsaXN0LiBXaGF0IGFib3V0Cj4g
Zm9sbG93aW5nPwo+IAo+ICAgaWYgKHJhbGlua19zb2MgPT0gTVQ3NjJYX1NPQ19NVDc2MjFBVCkg
ewo+ICAgICAgICAvKiAoR0UxLCBGb3JjZSAxMDAwTS9GRCwgRkMgT0ZGLCBNQVhfUlhfTEVOR1RI
IDE1MzYpICovCj4gICAgICAgIG10a19zd2l0Y2hfdzMyKGdzdywgMHgyMzA1ZTMwYiwgR1NXX1JF
R19NQUNfUDBfTUNSKTsKPiAgICAgICAgbXQ3NTMwX21kaW9fdzMyKGdzdywgMHgzNjAwLCAweDVl
MzBiKTsKPiAgIH0gZWxzZSB7Cj4gICAgICAgIC4uLgo+ICAgfQo+IAo+IEkganVzdCBkb24ndCBr
bm93IHdoaWNoIE1lZGlhVGVrIFNvQyBpcyAweDAxMDEgKHZlcjoxIGVjbzoxKSwgYnV0IEkgYXNz
dW1lLAo+IHRoYXQgdGhpcyBjb25kaXRpb24gaXMganVzdCBib2d1cyBmcm9tIHRoZSBiZWdpbm5p
bmcuCkluIG15IG9waW5pb24sIHRoZXJlIHJlYWxseSBpcyBubyBuZWVkIHRvIGNoZWNrIHRoZSBT
b0MgaGVyZSwgYmVjYXVzZQphbGwgb2YgdGhpcyBjb2RlIG9ubHkgZ2V0cyB1c2VkIG9uIE1UNzYy
MS4KCi0gRmVsaXgKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCm9wZW53cnQtZGV2ZWwgbWFpbGluZyBsaXN0Cm9wZW53cnQtZGV2ZWxAbGlzdHMub3Blbndy
dC5vcmcKaHR0cHM6Ly9saXN0cy5vcGVud3J0Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL29wZW53cnQt
ZGV2ZWwK
