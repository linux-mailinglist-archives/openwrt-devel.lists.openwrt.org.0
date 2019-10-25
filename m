Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 41295E4AEA
	for <lists+openwrt-devel@lfdr.de>; Fri, 25 Oct 2019 14:18:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:Message-ID:
	From:References:To:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=yX22FyEshxTe74qDLL4NyabNgOD+ownf9Ul6lFLiHSQ=; b=cM/++IeAzVe+V41YD0Oyf02P2
	6GAMJ22uNVa/O6m7S/co4l+ufw71dxp3UhbLXRCKn6Fx34lzG1UxvOBfxc/xCAiZV0kOMPag2kr16
	6HUEYO/+BY3rJFCWK8TK6sTW8dj7lfKh9fC9zeQaJIJRpjpYhSOdSh/3uRQyPsi3DzDzMbrpqfe5b
	Fo+ARMsLnmbHbT7axr2RIfI1cOusoIgdkWKqpg76NoSP0YbGry5+YL1DJoWtZzE5iijbiP7a+EaKu
	4kY3e+4rqqS1oVb7pph67dKOfqevQ6Xb+bXBgL15sjdnMLogj37CQ1AMC4zTOIm/ER6SDI4esWTFa
	HFXqNn0Fw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNyYP-0004cv-MB; Fri, 25 Oct 2019 12:18:53 +0000
Received: from nbd.name ([2a01:4f8:221:3d45::2])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNyYE-0004b3-R0
 for openwrt-devel@lists.openwrt.org; Fri, 25 Oct 2019 12:18:45 +0000
Received: from p5dcfbc27.dip0.t-ipconnect.de ([93.207.188.39]
 helo=[192.168.45.104])
 by ds12 with esmtpsa (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128)
 (Exim 4.89) (envelope-from <john@phrozen.org>)
 id 1iNyYC-0000Ac-M3; Fri, 25 Oct 2019 14:18:40 +0200
To: alex1452@gmx.net, openwrt-devel@lists.openwrt.org
References: <trinity-91aee333-84d2-4c69-8705-792355c89cbd-1572005325986@3c-app-gmx-bap02>
From: John Crispin <john@phrozen.org>
Message-ID: <75dd40cf-915d-f815-a891-d6b3247da88e@phrozen.org>
Date: Fri, 25 Oct 2019 14:18:39 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <trinity-91aee333-84d2-4c69-8705-792355c89cbd-1572005325986@3c-app-gmx-bap02>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191025_051843_760271_14362960 
X-CRM114-Status: GOOD (  17.52  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: Re: [OpenWrt-Devel] procd: Increase zram memory allocated for tmpfs
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

T24gMjUvMTAvMjAxOSAxNDowOCwgYWxleDE0NTJAZ214Lm5ldCB3cm90ZToKPiBEZWFyIGFsbCwg
ZGVhciBKb2huLAo+IAo+IEkgaGF2ZSBhbiBpc3N1ZSB3aXRoIHRtcGZzIG9uIHpyYW06IGFjY29y
ZGluZyB0byB0aGlzIHJlbWFyazoKPiAKPiBodHRwczovL2dpdC5vcGVud3J0Lm9yZy8/cD1wcm9q
ZWN0L3Byb2NkLmdpdDthPWNvbW1pdGRpZmY7aD03Njc2ZGYzMjI2ZGE1MzkxYzJkZmRhMmVkMjlh
NDA1MDBlMDRlMTViCj4gCj4gTmF0aGFuIChpbmNsLiBpbiBDQyBvZiB0aGlzIGVtYWlsKSBoYXMg
YSBoYXJkY29kZWQgdmFsdWUgZm9yIHpyYW0wIGZvciB0bXAuCj4gCj4gV2l0aCBpbnJlYXNpbmcg
UkFNIHNpemVzIGZvciByb3V0ZXJzIChtaW5lIGhhcyA0R0IpLCBjb3VsZCB0aGlzIGJlIAo+IHVu
bmVjZXNzYXJpbHkgcmVzdHJpY3RpdmU/IEZvciBteSB1c2UgY2FzZSAobWVkaWEgYW5kIGxhbiBz
ZXJ2ZXIpIDE2TUIgCj4gdG1wIGRyaXZlIGlzIGRlZmluaXRpdmVseSB0b28gc21hbGwuIEFuc3Vl
bMKgIGhhcyByYWlzZWQgc2ltaWxhciBjb25jZXJucyAKPiBhYm91dCBhIHllYXIgYWdvOgo+IAo+
IGh0dHBzOi8vYnVncy5vcGVud3J0Lm9yZy9pbmRleC5waHA/ZG89ZGV0YWlscyZ0YXNrX2lkPTEz
MTEmc3RyaW5nPXpyYW0mc2VhcmNoX25hbWU9JnR5cGUlNUIwJTVEPSZzZXYlNUIwJTVEPSZwcmkl
NUIwJTVEPSZkdWUlNUIwJTVEPSZyZXBvcnRlZCU1QjAlNUQ9JmNhdCU1QjAlNUQ9JnN0YXR1cyU1
QjAlNUQ9b3BlbiZwZXJjZW50JTVCMCU1RD0mb3BlbmVkPSZkZXY9JmNsb3NlZD0mZHVlZGF0ZWZy
b209JmR1ZWRhdGV0bz0mY2hhbmdlZGZyb209JmNoYW5nZWR0bz0mb3BlbmVkZnJvbT0mb3BlbmVk
dG89JmNsb3NlZGZyb209JmNsb3NlZHRvCj4gCj4gRm9yIGFsbW9zdCBhIHllYXIsIHRoZXJlIHNl
ZW1zIHRvIGV4aXN0IGEgcGF0Y2ggaW4gdGhlIGJ1ZyB0cmFja2VyLCB0aGF0IAo+IGhhcyBubyBh
Y3Rpdml0aWVzOgo+IAo+IEZTIzE5NDMgLSBwcm9jZDogSW5jcmVhc2UgenJhbSBtZW1vcnkgYWxs
b2NhdGVkIGZvciB0bXBmcwo+IAo+IGh0dHBzOi8vYnVncy5vcGVud3J0Lm9yZy9pbmRleC5waHA/
ZG89ZGV0YWlscyZ0YXNrX2lkPTE5NDMmc3RyaW5nPXpyYW0mc2VhcmNoX25hbWU9JnR5cGUlNUIw
JTVEPSZzZXYlNUIwJTVEPSZwcmklNUIwJTVEPSZkdWUlNUIwJTVEPSZyZXBvcnRlZCU1QjAlNUQ9
JmNhdCU1QjAlNUQ9JnN0YXR1cyU1QjAlNUQ9b3BlbiZwZXJjZW50JTVCMCU1RD0mb3BlbmVkPSZk
ZXY9JmNsb3NlZD0mZHVlZGF0ZWZyb209JmR1ZWRhdGV0bz0mY2hhbmdlZGZyb209JmNoYW5nZWR0
bz0mb3BlbmVkZnJvbT0mb3BlbmVkdG89JmNsb3NlZGZyb209JmNsb3NlZHRvCj4gCj4gRm9yIHlv
dXIgY29udmVuaWVuY2UsIEkgaGF2ZSBpbmNsdWRlZCB0aGUgcGF0Y2ggYXMgYXR0YWNobWVudC4g
Cj4gVW5mb3J0dW5hdGVseSwgSSBhbSBxdWl0ZSBuZXcgdG8gT3BlbldSVCBzbyBJIGFtIG5vdCBz
dXJlIG9uIHRoZSByaWdodCAKPiBhcHByb2FjaCB0byBpbmNsdWRlIHRoaXMgcGF0Y2ggaW4gbXkg
Y29tcGlsZS4KPiAKPiBUaGVyZWZvcmUgY291bGQgSSBhc2sgdGhlIGZvbGxvd2luZyBxdWVzdGlv
bnM6Cj4gCj4gMS4gRG8geW91IGhhdmUgY2hhbmdlcyB0byB0aGUgUkFNIHNpemUgKGUuZy4gd2l0
aCB0aGUgbWVudGlvbmVkIHBhdGgpIG9uIAo+IHlvdXIgcm9hZG1hcD8gSWYgc28sIGRvIHlvdSBh
bHJlYWR5IGhhdmUgYW4gYXBwcm94aW1hdGUgRVRBPwo+IAo+IDIuIFdoYXQgYXJlIHRoZSByb3Vn
aCBzdGVwcyB0byBjb3JyZWN0bHkgaW5jbHVkZSB0aGUgbWVudGlvbmVkIHBhdGggaW4gCj4gdGhl
IHBhY2thZ2UgZm9yIHRlc3Rpbmc/Cj4gCkhpLApwbGVhc2UgZm9sbG93IHRoZSBob3d0byB3aGVu
IHN1Ym1pdHRpbmcgcGF0Y2hlcyAtLT4gCmh0dHBzOi8vb3BlbndydC5vcmcvc3VibWl0dGluZy1w
YXRjaGVzCglKb2huCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpvcGVud3J0LWRldmVsIG1haWxpbmcgbGlzdApvcGVud3J0LWRldmVsQGxpc3RzLm9wZW53
cnQub3JnCmh0dHBzOi8vbGlzdHMub3BlbndydC5vcmcvbWFpbG1hbi9saXN0aW5mby9vcGVud3J0
LWRldmVsCg==
