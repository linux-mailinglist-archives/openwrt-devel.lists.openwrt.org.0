Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A6281DFEF4
	for <lists+openwrt-devel@lfdr.de>; Sun, 24 May 2020 14:43:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cW2miOPSv/1ZDxh79cjIZisB4wA3yEfOGqwgeAYiiUA=; b=k1tEJHMcnhf2Hq
	rGOJ98lWkGr90OP1OP7QjC6ZcRC1oM6rmxV4uJISTWLnwLWUPHTaIT+8ZU7cgi3D+LcC5rh97mNxW
	uZgzr1KyOIDjUXquL8FpuFVx9PpCgYC7k87fddOyAKkzY9XsYMjTejLHzfvXxwrdOiv+oDhuSNjUL
	ABsA9MxCcYRv8cUShsjhiR77TVLv8mhlX5vzpmPEnoJUfTFkynJrWTaWDTks3y3bXONZg+bymtDi4
	GMPnBddXfy0XyCzt/9nLsWLYCwpRVhoRMDqoenauibOndOEZlqBNI8jwUZyibal/9n8Dy9Q9W0WGS
	i0LyJmFj5CF50qdC+9LQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jcpy1-000889-Tg; Sun, 24 May 2020 12:43:01 +0000
Received: from mail-yb1-xb43.google.com ([2607:f8b0:4864:20::b43])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jcpxq-00087I-DX
 for openwrt-devel@lists.openwrt.org; Sun, 24 May 2020 12:42:52 +0000
Received: by mail-yb1-xb43.google.com with SMTP id a10so7107102ybc.3
 for <openwrt-devel@lists.openwrt.org>; Sun, 24 May 2020 05:42:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=YD7/CHPALrQa6qOOb1elOA9+LbKCHW5pMz5ADKy66ig=;
 b=LwGqIyYcG8M9/86n8mE/35ZKsrvihjCBaWOjMM2DmTNVkqAY7Mu7hR3sG5Qab8dxgi
 mr9FSe6EPHuzOapPqupLutTZHQ5/nqNxdpl3QXlK+wEGkDO6jEE/jpCSbdi92v1z3ivL
 qdRjMDf1gHAKBJiDrHknxio5/rkXg6t3VDlrGoFyjmrdDL30YYQER40PrOk+zv2cgEm4
 XH4mUy6Q4reVckIdYaMAEkT8RCxdminKpHoBfArCFckGrCU9DLyaOOqK72VPPW53mpNM
 RVbX7eP48s+qHRwTvrDHmVFPi+5XCeZQl/KsSl037LOSXHHV9EElJowFeEuJ9zMjJLFP
 Limw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=YD7/CHPALrQa6qOOb1elOA9+LbKCHW5pMz5ADKy66ig=;
 b=E/ccUzT/s7ml8ga13Fyp6TlHAk9J6WNuhaYJlp27bfYseAzRlCK4uhHgTodR3r7J/g
 IwXxi32nvvMsE4S+7NDFcgvu7eGVaZDrPGmQctccI2AtArKPXul90y9lfa4o4SfeWJzU
 YZGJm3gMOoXzn5FSmG773LVjfzYXQ2UlTaSgK000CmQ36H9fB1jbFJgaEm6/8qSnLZik
 rVU8BgwhBBuOmj1g5HDzZYMAhWhQwENMfeBxH3SUSkZNxnoQFlqg0HAzOrMUNyLj6XiF
 /TVKGp9cWXyNrdRNSzjHOLK12lZ/qeNhGLVq4sTiRF71R2RfJvVck1UN0XEBILcHxFWl
 Ligg==
X-Gm-Message-State: AOAM530PkFPhFlZ5rq7oHftceT9HBLuiwKVi80Jdlz1BuTk2sYpt6xAK
 Op6lxLl1lKIIDhmfKbqxWnPErMXmtzgHUaVPvJcwZUKG
X-Google-Smtp-Source: ABdhPJyrYFExhwRsuXbEielaKHkUt9k5jlQwqfAnGON5AXDkTxxtDBxZgVE95JcJoY7qf9YSPCFkHnH+i+VUgb4IqZ0=
X-Received: by 2002:a25:3ac6:: with SMTP id
 h189mr15337787yba.281.1590324167682; 
 Sun, 24 May 2020 05:42:47 -0700 (PDT)
MIME-Version: 1.0
References: <20027397.f1LIkykH4V@tool>
 <011101d63156$21a24740$64e6d5c0$@adrianschmutzler.de>
 <CABwr4_v_oPa6ntDi+r7HN4FJ+CTgAzs7p8Z_AiO79pMqdXQ9eA@mail.gmail.com>
 <005e01d631bc$99019a00$cb04ce00$@adrianschmutzler.de>
In-Reply-To: <005e01d631bc$99019a00$cb04ce00$@adrianschmutzler.de>
From: =?UTF-8?Q?Daniel_Gonz=C3=A1lez_Cabanelas?= <dgcbueu@gmail.com>
Date: Sun, 24 May 2020 14:42:36 +0200
Message-ID: <CABwr4_vBg_-TuV56P1jAcNzMPVDHK6jHp78Et8-027tmAXTxCQ@mail.gmail.com>
To: mail@adrianschmutzler.de
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200524_054250_490507_7932ACC1 
X-CRM114-Status: GOOD (  34.23  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:b43 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [dgcbueu[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
Subject: Re: [OpenWrt-Devel] [PATCH] bcm63xx: DGND3700v1: device tree
 improvements
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
Cc: openwrt-devel@lists.openwrt.org,
 =?UTF-8?B?w4FsdmFybyBGZXJuw6FuZGV6IFJvamFz?= <noltari@gmail.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

SGkgQWRyaWFuCgpFbCBkb20uLCAyNCBtYXkuIDIwMjAgYSBsYXMgMTM6MTUsIDxtYWlsQGFkcmlh
bnNjaG11dHpsZXIuZGU+IGVzY3JpYmnDszoKPgo+IEhpIERhbmllbCwKPgo+ID4gLS0tLS1Pcmln
aW5hbCBNZXNzYWdlLS0tLS0KPiA+IEZyb206IG9wZW53cnQtZGV2ZWwgW21haWx0bzpvcGVud3J0
LWRldmVsLWJvdW5jZXNAbGlzdHMub3BlbndydC5vcmddCj4gPiBPbiBCZWhhbGYgT2YgRGFuaWVs
IEdvbnrDoWxleiBDYWJhbmVsYXMKPiA+IFNlbnQ6IFNvbm50YWcsIDI0LiBNYWkgMjAyMCAxMTow
Ngo+ID4gVG86IG1haWxAYWRyaWFuc2NobXV0emxlci5kZQo+ID4gQ2M6IG9wZW53cnQtZGV2ZWxA
bGlzdHMub3BlbndydC5vcmc7IMOBbHZhcm8gRmVybsOhbmRleiBSb2phcwo+ID4gPG5vbHRhcmlA
Z21haWwuY29tPgo+ID4gU3ViamVjdDogUmU6IFtPcGVuV3J0LURldmVsXSBbUEFUQ0hdIGJjbTYz
eHg6IERHTkQzNzAwdjE6IGRldmljZSB0cmVlCj4gPiBpbXByb3ZlbWVudHMKPiA+Cj4gPiBIaSBB
ZHJpYW46Cj4gPgo+ID4gRWwgZG9tLiwgMjQgbWF5LiAyMDIwIGEgbGFzIDE6MDEsIDxtYWlsQGFk
cmlhbnNjaG11dHpsZXIuZGU+IGVzY3JpYmnDszoKPiA+ID4KPiA+ID4gSGksCj4gPiA+Cj4gPiA+
ID4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0KPiA+ID4gPiBGcm9tOiBvcGVud3J0LWRldmVs
IFttYWlsdG86b3BlbndydC1kZXZlbC0KPiA+IGJvdW5jZXNAbGlzdHMub3BlbndydC5vcmddCj4g
PiA+ID4gT24gQmVoYWxmIE9mIERhbmllbCBHb256w6FsZXogQ2FiYW5lbGFzCj4gPiA+ID4gU2Vu
dDogU29ubnRhZywgMjQuIE1haSAyMDIwIDAwOjI0Cj4gPiA+ID4gVG86IG9wZW53cnQtZGV2ZWxA
bGlzdHMub3BlbndydC5vcmcKPiA+ID4gPiBDYzogbm9sdGFyaUBnbWFpbC5jb20KPiA+ID4gPiBT
dWJqZWN0OiBbT3BlbldydC1EZXZlbF0gW1BBVENIXSBiY202M3h4OiBER05EMzcwMHYxOiBkZXZp
Y2UgdHJlZQo+ID4gPiA+IGltcHJvdmVtZW50cwo+ID4gPiA+Cj4gPiA+ID4gSW1wcm92ZSB0aGUg
ZGV2aWNlIHRyZWUgZmlsZSBhbmQgcmVsYXRlZCBib2FyZCBkYXRhIGZvciB0aGUKPiA+ID4gPiBE
R05EMzcwMHYxLyBER05EMzgwMEIgcm91dGVyOgo+ID4gPiA+ICAtIEltcHJvdmUgTEVEcyBkZWZp
bml0aW9ucywgdXNlIHNob3J0ZXIgbmFtZXMuCj4gPiA+ID4gIC0gTWFrZSB0aGUgYm9hcmQgbmFt
ZSBtb3JlIHJlYWRhYmxlLgo+ID4gPiA+ICAtIEZpeCB0aGUgc3dpdGNoIExBTiBsYWJlbHMsIHRo
ZSBvcmRlciBpcyByZXZlcnNlZC4KPiA+ID4gPiAgLSBVc2UgdGhlIHJlYWwgbmFtZSBvZiB0aGUg
Ym9hcmQgZm9yIHRoZSBib2FyZCBuYW1lIGluc3RlYWQgb2YgZGV2aWNlCj4gPiA+ID4gICAgbmFt
ZS4KPiA+ID4gPiAgLSBVc2Ugc3RhbmRhcml6ZWQgbmFtZXMgZm9yIHBhcnRpdGlvbiBub2RlcyBh
bmQgbGVkcy4KPiA+ID4KPiA+ID4gVGhpcyBkZWFscyB3aXRoIHNldmVyYWwgZGlmZmVyZW50IGlz
c3VlcyBhdCB0aGUgc2FtZSB0aW1lLiBJJ2QgcHJlZmVyIHRvIGhhdmUKPiA+IGl0IHNwbGl0IHVw
IChlLmcuIHNlcGFyYXRlIGJvYXJkIG5hbWUgY2hhbmdlIGZyb20gTEVEIGNoYW5nZXMgYW5kIHN3
aXRjaAo+ID4gY2hhbmdlcykuCj4gPiA+Cj4gPgo+ID4gSSBjYW4ndCBzZWUgdGhlIGJlbmVmaXQg
b2YgZmxvb2Rpbmcgd2l0aCBjb21taXRzIG9uIGV2ZXJ5IG5lZ2xpZ2libGUgY2hhbmdlLgo+ID4g
VGhlc2UgYXJlIGp1c3QgY29zbWV0aWMgY2hhbmdlcyB3aGljaCB3b24ndCBhZmZlY3QgdGhlIGJl
aGF2aW9yIG9mIHRoZQo+ID4gZGV2aWNlLCBhbmQgd29udCBwcm9kdWNlIGFueSB1bmV4cGVjdGVk
IGJ1ZywgSSd2ZSBtYWRlIHRoZSBvcHBvcnR1bmUKPiA+IHRlc3RzLgo+Cj4gV2VsbCwgb25lIG9m
IHRoZSBwb3NzaWJsZSBidWdzIHdvdWxkIGJlIHRoYXQgTEVEcyB3b24ndCB3b3JrIGFmdGVyIHN5
c3VwZ3JhZGUsIHNlZSBiZWxvdy4KPiBJIGRvbid0IHRoaW5rIHRoYXQgZXZlcnl0aGluZyBzaG91
bGQgYmUgc2VwYXJhdGUsIGJ1dCBJIGRvbid0IGxpa2UgY29tcGxldGVseSBkaWZmZXJlbnQgdGhp
bmdzIHN0dWZmZWQgdG9nZXRoZXIuCj4KTm90IHJlYWxseSBhIGJ1ZywgYW5kIHRoZSBzb2x1dGlv
biBpcyBlYXN5IGZyb20gdGhlIHBvaW50IG9mIHZpZXcgb2YKYW55IHVzZXIuIEl0IHdvdWxkIGJl
IHRoZSByZWFzb24gZm9yIG5vbiBiYWNrcG9ydGluZyB0aGVzZSBjaGFuZ2VzLApub3QgYSBnb29k
IGlkZWEgaGF2aW5nIGEgZGlmZXJlbnQgYmVoYXZpb3Igb2YgbGVkcyBvbiB0aGUgc2FtZSBPcGVu
d3J0CnZlcnNpb24uIEl0J3MgbW9yZSBpbnR1aXRpdmUgZm9yIGFueSB1c2VyIHdoaWNoIGRlY2lk
ZXMgdG8gdXBncmFkZSB0bwphIG5ldyB2ZXJzaW9uIGFuZCBpZiBzb21ldGhpbmcgIGlzbid0IHdv
cmtpbmcsIHRoZXkgdGhpbmsgdGhlcmUgaXMgYQptaXNzY29uY29uZmlndXJhdGlvbiBpc3N1ZSBz
b21ld2hlcmUuIEknbSBhbG1vc3Qgc3VyZSAxMDAlIG9mIHVzZXJzCm1ha2UgYSByZXNldCB0byBk
ZWZhdWx0cyBvbiB0aGlzIGNhc2UuCgo+ID4KPiA+ID4gPgo+ID4gPiA+IFNpZ25lZC1vZmYtYnk6
IERhbmllbCBHb256w6FsZXogQ2FiYW5lbGFzIDxkZ2NidWV1QGdtYWlsLmNvbT4KPiA+ID4gPiAt
LS0KPiA+ID4gPiAgLi4uL2JjbTYzeHgvYmFzZS1maWxlcy9ldGMvYm9hcmQuZC8wMV9sZWRzICAg
IHwgMTIgKystLQo+ID4gPiA+ICAuLi4vZHRzL2JjbTYzNjgtbmV0Z2Vhci1kZ25kMzcwMC12MS5k
dHMgICAgICAgfCA2NCArKysrKysrKystLS0tLS0tLS0tCj4gPiA+ID4gIC4uLi81NDktYm9hcmRf
REdORDM3MDB2MV8zODAwQi5wYXRjaCAgICAgICAgICB8ICAyICstCj4gPiA+ID4gIDMgZmlsZXMg
Y2hhbmdlZCwgMzkgaW5zZXJ0aW9ucygrKSwgMzkgZGVsZXRpb25zKC0pCj4gPiA+ID4KPiA+ID4g
PiBkaWZmIC0tZ2l0IGEvdGFyZ2V0L2xpbnV4L2JjbTYzeHgvYmFzZS1maWxlcy9ldGMvYm9hcmQu
ZC8wMV9sZWRzCj4gPiA+ID4gYi90YXJnZXQvbGludXgvYmNtNjN4eC9iYXNlLWZpbGVzL2V0Yy9i
b2FyZC5kLzAxX2xlZHMKPiA+ID4gPiBpbmRleCA5MWQ2N2YwYzBiLi42YjgyZDllOTUyIDEwMDc1
NQo+ID4gPiA+IC0tLSBhL3RhcmdldC9saW51eC9iY202M3h4L2Jhc2UtZmlsZXMvZXRjL2JvYXJk
LmQvMDFfbGVkcwo+ID4gPiA+ICsrKyBiL3RhcmdldC9saW51eC9iY202M3h4L2Jhc2UtZmlsZXMv
ZXRjL2JvYXJkLmQvMDFfbGVkcwo+ID4gPiA+IEBAIC02NiwxMiArNjYsMTIgQEAgaW52ZW50ZWws
bGl2ZWJveC0xKQo+ID4gPiA+ICAgICAgIHVjaWRlZl9zZXRfbGVkX25ldGRldiAid2xhbjAiICJX
SUZJIiAiTGl2ZWJveDE6cmVkOndpZmkiICJ3bGFuMCIKPiA+ID4gPiAgICAgICA7Owo+ID4gPiA+
ICBuZXRnZWFyLGRnbmQzNzAwLXYxKQo+ID4gPiA+IC0gICAgIHVjaWRlZl9zZXRfbGVkX25ldGRl
diAibGFuIiAiTEFOIiAiREdORDM3MDB2MV8zODAwQjpncmVlbjpsYW4iCj4gPiA+ID4gImV0aDAu
MSIKPiA+ID4gPiAtICAgICB1Y2lkZWZfc2V0X2xlZF9uZXRkZXYgIndhbiIgIldBTiIKPiA+ID4g
PiAiREdORDM3MDB2MV8zODAwQjpncmVlbjppbmV0IiAiZXRoMC4yIgo+ID4gPiA+IC0gICAgIHVj
aWRlZl9zZXRfbGVkX25ldGRldiAid2xhbjAiICJXSUZJMkciCj4gPiA+ID4gIkRHTkQzNzAwdjFf
MzgwMEI6Z3JlZW46d2lmaTJnIiAid2xhbjAiCj4gPiA+ID4gLSAgICAgdWNpZGVmX3NldF9sZWRf
bmV0ZGV2ICJ3bGFuMSIgIldJRkk1RyIKPiA+ID4gPiAiREdORDM3MDB2MV8zODAwQjpibHVlOndp
Zmk1ZyIgIndsYW4xIgo+ID4gPiA+IC0gICAgIHVjaWRlZl9zZXRfbGVkX3VzYmRldiAidXNiMSIg
IlVTQjEiCj4gPiA+ID4gIkRHTkQzNzAwdjFfMzgwMEI6Z3JlZW46dXNiLWJhY2siICIxLTEiCj4g
PiA+ID4gLSAgICAgdWNpZGVmX3NldF9sZWRfdXNiZGV2ICJ1c2IyIiAiVVNCMiIKPiA+ID4gPiAi
REdORDM3MDB2MV8zODAwQjpncmVlbjp1c2ItZnJvbnQiICIxLTIiCj4gPiA+ID4gKyAgICAgdWNp
ZGVmX3NldF9sZWRfbmV0ZGV2ICJsYW4iICJMQU4iICIkbW9kZWw6Z3JlZW46bGFuIiAiZXRoMC4x
Igo+ID4gPiA+ICsgICAgIHVjaWRlZl9zZXRfbGVkX25ldGRldiAid2FuIiAiV0FOIiAiJG1vZGVs
OmdyZWVuOmluZXQiICJldGgwLjIiCj4gPiA+ID4gKyAgICAgdWNpZGVmX3NldF9sZWRfbmV0ZGV2
ICJ3bGFuMCIgIldJRkkyRyIgIiRtb2RlbDpncmVlbjp3aWZpMmciCj4gPiA+ID4gIndsYW4wIgo+
ID4gPiA+ICsgICAgIHVjaWRlZl9zZXRfbGVkX25ldGRldiAid2xhbjEiICJXSUZJNUciICIkbW9k
ZWw6Ymx1ZTp3aWZpNWciCj4gPiA+ID4gIndsYW4xIgo+ID4gPiA+ICsgICAgIHVjaWRlZl9zZXRf
bGVkX3VzYmRldiAidXNiMSIgIlVTQjEiICIkbW9kZWw6Z3JlZW46dXNiLWJhY2siCj4gPiA+ID4g
KyAiMS0KPiA+ID4gPiAxIgo+ID4gPiA+ICsgICAgIHVjaWRlZl9zZXRfbGVkX3VzYmRldiAidXNi
MiIgIlVTQjIiICIkbW9kZWw6Z3JlZW46dXNiLWZyb250Igo+ID4gPiA+ICsgIjEtCj4gPiA+ID4g
MiIKPiA+ID4KPiA+ID4gSXMgdGhlcmUgYW55IHdheSB0byBkbyBzeXN1cGdyYWRlIG9uIHRoZXNl
IGRldmljZXM/IElmIHllcywgeW91IHdpbGwgbmVlZAo+ID4gbWlncmF0aW9uIG9mIHRoZSBuYW1l
cyBpbiAvZXRjL2NvbmZpZy9zeXN0ZW0gLi4uCj4gPiA+Cj4gPgo+ID4gVGhlIHN5c3VwZ3JhZGUg
d29ya3Mgb3V0IG9mIHRoZSBib3ggdXNpbmcgdGhlIGRlZmF1bHRfZG9fdXBncmFkZS4gTm90Cj4g
PiBzdXJlIHdoYXQgSSBuZWVkIHRvIHJldmlldywgY2FuIHlvdSBiZSBtb3JlIHNwZWNpZmljPwo+
Cj4gT24gYSBuZXdseSBpbnN0YWxsZWQgZGV2aWNlIHRoZXJlIHdvbid0IGJlIGEgcHJvYmxlbS4g
MDFfbGVkcyB3aWxsIGdlbmVyYXRlIHRoZSBMRUQgZW50cmllcyBpbiAvZXRjL2NvbmZpZy9zeXN0
ZW0gb24gZmlyc3Rib290LCBhbmQgYWZ0ZXIgdGhhdCB0aGUgbmFtZXMgdXNlZCB0aGVyZSB3b24n
dCBjaGFuZ2UgYW55bW9yZSwgZXZlbiBvbiB1cGdyYWRlLiBJbiBjb250cmFzdCwgdGhlIExFRCBu
YW1lcyBpbiB0aGUgZGV2aWNlIHRyZWUgd2lsbCBjaGFuZ2Ugd2l0aCBldmVyeSB1cGdyYWRlLCBz
byB0aGF0IHRoaXMgY2hhbmdlIHJlc3VsdHMgaW4gdGhlIExFRCBzZXR0aW5ncyBiZWNvbWluZyBi
cm9rZW4gd2l0aG91dCBhIHJlc2V0IG9mIGNvbmZpZyBmaWxlcy4gVGhpcyBjYW4gYmUgaGVhbGVk
IHdpdGggYSBtaWdyYXRpb24gc2NyaXB0LCBlLmcuCj4gaHR0cHM6Ly9naXRodWIuY29tL29wZW53
cnQvb3BlbndydC9ibG9iL21hc3Rlci90YXJnZXQvbGludXgvcmFtaXBzL210NzZ4OC9iYXNlLWZp
bGVzL2V0Yy91Y2ktZGVmYXVsdHMvMDRfbGVkX21pZ3JhdGlvbgo+Cj4gVGhhdCdzIEJUVyB0aGUg
cmVhc29uIHdoeSB3ZSBoYXZlbid0IGNoYW5nZWQgdGhlc2UgZm9yIGNvbnNpc3RlbmN5IHNvIGZh
ciBvbiB0aGlzIHRhcmdldC4KPgpJdCdzIG5pY2UgaGF2aW5nIGEgc2NyaXB0IGZvciBtYWtpbmcg
dGhvc2UgbWlncmF0aW9ucy4gSXQgbWFrZXMgdGhlCmxpZmUgZWFzaWVyIGZvciBlbmQgdXNlcnMs
IGJ1dCBsaWZlIGhhcmRlciBmb3IgcGF0Y2hpbmcgdGhpcyBzdHVmZi4KCj4gPgo+ID4gPiA+ICAg
ICAgIDs7Cj4gPiA+ID4gIG5ldGdlYXIsZGduZDM3MDAtdjIpCj4gPiA+ID4gICAgICAgdWNpZGVm
X3NldF9sZWRfbmV0ZGV2ICJsYW4iICJMQU4iICIkbW9kZWw6Z3JlZW46ZXRoZXJuZXQiICJldGgw
Igo+ID4gPiA+IGRpZmYgLS1naXQKPiA+ID4gPiBhL3RhcmdldC9saW51eC9iY202M3h4L2R0cy9i
Y202MzY4LW5ldGdlYXItZGduZDM3MDAtdjEuZHRzCj4gPiA+ID4gYi90YXJnZXQvbGludXgvYmNt
NjN4eC9kdHMvYmNtNjM2OC1uZXRnZWFyLWRnbmQzNzAwLXYxLmR0cwo+ID4gPiA+IGluZGV4IDU0
NmIwYjFmNjAuLmMxN2JiM2E2MDAgMTAwNjQ0Cj4gPiA+ID4gLS0tIGEvdGFyZ2V0L2xpbnV4L2Jj
bTYzeHgvZHRzL2JjbTYzNjgtbmV0Z2Vhci1kZ25kMzcwMC12MS5kdHMKPiA+ID4gPiArKysgYi90
YXJnZXQvbGludXgvYmNtNjN4eC9kdHMvYmNtNjM2OC1uZXRnZWFyLWRnbmQzNzAwLXYxLmR0cwo+
ID4gPiA+IEBAIC01LDEyICs1LDEyIEBACj4gPiA+ID4gICNpbmNsdWRlIDxkdC1iaW5kaW5ncy9p
bnB1dC9pbnB1dC5oPgo+ID4gPiA+Cj4gPiA+ID4gIC8gewo+ID4gPiA+IC0gICAgIG1vZGVsID0g
Ik5ldGdlYXIgREdORDM3MDB2MS9ER05EMzgwMEIiOwo+ID4gPiA+ICsgICAgIG1vZGVsID0gIk5l
dGdlYXIgREdORDM3MDB2MSAvIERHTkQzODAwQiI7Cj4gPiA+Cj4gPiA+IEkgZG9uJ3QgdGhpbmsg
dGhpcyBpcyByZWFsbHkgbmVjZXNzYXJ5IC4uLgo+ID4gPgpJIGZvcmdvdCB0byBjb21tZW50IHRo
aXMuIFRoZSBjaGFuZ2UgbWFrZXMgdGhlIGRldmljZSBtb2RlbCBtb3JlCnJlYWRhYmxlLi4gSXQn
cyBwdXJlbHkgY29zbWV0aWMgYW5kIGtlZXBzIGNvaGVyZW5jeSB3aXRoIHRoZSBkZXZpY2UKdGl0
bGUgdXNlZCBpbiB0aGUgT3BlbldydCB3aWtpLgoKPiA+ID4gPiAgICAgICBjb21wYXRpYmxlID0g
Im5ldGdlYXIsZGduZDM3MDAtdjEiLCAiYnJjbSxiY202MzY4IjsKPiA+ID4gPgo+ID4gPiA+ICAg
ICAgIGFsaWFzZXMgewo+ID4gPiA+ICAgICAgICAgICAgICAgbGVkLWJvb3QgPSAmbGVkX3Bvd2Vy
X2dyZWVuOwo+ID4gPiA+IC0gICAgICAgICAgICAgbGVkLWZhaWxzYWZlID0gJmxlZF9wb3dlcl9n
cmVlbjsKPiA+ID4gPiArICAgICAgICAgICAgIGxlZC1mYWlsc2FmZSA9ICZsZWRfcG93ZXJfcmVk
Owo+ID4gPgo+ID4gPiBUaGlzIHNob3VsZCBiZSBhIHNlcGFyYXRlIGNvbW1pdCBhZ2Fpbi4KPiA+
ID4KPiA+Cj4gPiBPbmUgY29tbWl0IHBlciBsaW5lLCBvbiB0aGUgc2FtZSBmaWxlLCByZWFsbHk/
LCBhZ2FpbiB0aGlzIGlzIGEgbWlub3IgY2hhbmdlLgo+Cj4gWWVzLCBidXQgaXQncyBhIG5vbi1j
b3NtZXRpYyAod2l0aCByZXNwZWN0IHRvIGl0cyBlZmZlY3QpIGJlaGF2aW9yIGNoYW5nZSB0aGF0
IGlzIG5vdCBhdCBhbGwgY29ubmVjdGVkIHRvIHRoZSByZXN0LgoKTWlnaHQgYmUgYmV0dGVyIHBh
dGNoaW5nIGFsbCBib2FyZHMsIGhhdmluZyBtdWx0aWNvbG9yIHBvd2VyIGxlZHMsIGF0CnRoZSBz
YW1lIHRpbWU/Cgo+Cj4gSnVzdCBpbWFnaW5lIHdlIHdhbnQgdG8gYmFja3BvcnQgdGhpcyBvciB0
aGUgZml4ZWQgcG9ydCBvcmRlciB0byAxOS4wNywgYnV0IGRvbid0IHdhbnQgdG8gbWVzcyB3aXRo
IExFRCBuYW1lcy4gU2VwYXJhdGUgY29tbWl0cyBmb3Igc2VwYXJhdGUgdG9waWNzIG1ha2Ugc2Vu
c2UuCj4KSSBjYW4gaW1hZ2luZSBpdC4gQnV0IGJlaW5nIHJlYWxpc3RpYyBpdCB3b24ndCBldmVy
IGhhcHBlbi4KCj4gPgo+ID4gPiA+ICAgICAgICAgICAgICAgbGVkLXJ1bm5pbmcgPSAmbGVkX3Bv
d2VyX2dyZWVuOwo+ID4gPiA+ICAgICAgICAgICAgICAgbGVkLXVwZ3JhZGUgPSAmbGVkX3Bvd2Vy
X2dyZWVuOwo+ID4gPiA+ICAgICAgIH07Cj4gPiA+ID4gQEAgLTUxLDQ5ICs1MSw0OSBAQAo+ID4g
PiA+ICAgICAgIGxlZHMgewo+ID4gPiA+ICAgICAgICAgICAgICAgY29tcGF0aWJsZSA9ICJncGlv
LWxlZHMiOwo+ID4gPiA+Cj4gPiA+ID4gLSAgICAgICAgICAgICBkc2xfZ3JlZW4gewo+ID4gPiA+
IC0gICAgICAgICAgICAgICAgICAgICBsYWJlbCA9ICJER05EMzcwMHYxXzM4MDBCOmdyZWVuOmRz
bCI7Cj4gPiA+ID4gKyAgICAgICAgICAgICBsZWRAMiB7Cj4gPiA+Cj4gPiA+IEkgZG9uJ3Qga25v
dyB3aGV0aGVyIHRoaXMgaXMgZGlmZmVyZW50IG9uIGJjbTYzeHgsIGJ1dCBiYXNlZCBvbiB3aGF0
IEknbQo+ID4gdXNlZCB0byB0aGUgb2xkIG5vZGUgbmFtZSBpcyBwcmVmZXJyZWQgKGRzbF9ncmVl
bikuCj4gPiA+Cj4gPgo+ID4gV2VsbCwgSSdsbCBuZXZlciBrbm93IHdoYXQncyB0aGUgYmVzdCB3
YXkgZm9yIG5hbWluZyBhIGxlZCBub2RlLiBJJ3ZlIHRha2VuCj4gPiB0aGUgcGFydGl0aW9ucyBu
b2RlcyBhcyBhIHJlZmVyZW5jZSwgYW5kIHRoZSBMRURzIGRldmljZSB0cmVlIGRvY3VtZW50YXRp
b24KPiA+IGFsc28gdXNlIHRoaXMgd2F5IGFzIGFuIGV4YW1wbGUuCj4KPiBPcGVud3J0IHNlZW1z
IHRvIGdlbmVyYWxseSB1c2UgdGhlIG5hbWUtYmFzZWQgc2NoZW1lICh0aGUgb25lIGFscmVhZHkg
dGhlcmUpLCBhbmQgc2luY2UgdGhlcmUgaXMgbm8gcmVhc29uIGZvciBjaGFuZ2luZyB0aGF0IGFu
ZCBpdCdzIHVuY29ubmVjdGVkIHRvIHRoZSByZXN0IG9mIHlvdXIgY2hhbmdlcywgcGxlYXNlIGp1
c3QgZHJvcCB0aGVzZSBjaGFuZ2VzIChvZiBjb3Vyc2UsIG9ubHkgdGhlIG5vZGUgbmFtZSwgbm90
IHRoZSBsYWJlbCBjaGFuZ2VzKS4KCkkndmUgcmVhbGx5IG1hZGUgdGhpcyBjaGFuZ2UgdG8ga2Vl
cCBjb2hlcmVuY3kgd2l0aCBoaXMgYnJvdGhlcgpER05EMzcwMHYyLCBzdXBwb3J0ZWQgc2luY2Ug
YWJvdXQgYSB3ZWVrIGFnbywgYWxzbyBiZWxvbmdpbmcgdG8gdGhpcwp0YXJnZXQuCgpSZWdhcmRz
Cj4KPiBCZXN0Cj4KPiBBZHJpYW4KPgo+ID4KPiA+IFJlZ2FyZHMKPiA+Cj4gPiA+IEJlc3QKPiA+
ID4KPiA+ID4gQWRyaWFuCj4gPiA+Cj4gPiA+ID4gKyAgICAgICAgICAgICAgICAgICAgIGxhYmVs
ID0gImRnbmQzNzAwLXYxOmdyZWVuOmRzbCI7Cj4gPiA+ID4gICAgICAgICAgICAgICAgICAgICAg
IGdwaW9zID0gPCZwaW5jdHJsIDIgMT47Cj4gPiA+ID4gICAgICAgICAgICAgICB9Owo+ID4gPiA+
IC0gICAgICAgICAgICAgaW5ldF9yZWQgewo+ID4gPiA+IC0gICAgICAgICAgICAgICAgICAgICBs
YWJlbCA9ICJER05EMzcwMHYxXzM4MDBCOnJlZDppbmV0IjsKPiA+ID4gPiArICAgICAgICAgICAg
IGxlZEA0IHsKPiA+ID4gPiArICAgICAgICAgICAgICAgICAgICAgbGFiZWwgPSAiZGduZDM3MDAt
djE6cmVkOmluZXQiOwo+ID4gPiA+ICAgICAgICAgICAgICAgICAgICAgICBncGlvcyA9IDwmcGlu
Y3RybCA0IDE+Owo+ID4gPiA+ICAgICAgICAgICAgICAgfTsKPiA+ID4gPiAtICAgICAgICAgICAg
IGluZXRfZ3JlZW4gewo+ID4gPiA+IC0gICAgICAgICAgICAgICAgICAgICBsYWJlbCA9ICJER05E
MzcwMHYxXzM4MDBCOmdyZWVuOmluZXQiOwo+ID4gPiA+ICsgICAgICAgICAgICAgbGVkQDUgewo+
ID4gPiA+ICsgICAgICAgICAgICAgICAgICAgICBsYWJlbCA9ICJkZ25kMzcwMC12MTpncmVlbjpp
bmV0IjsKPiA+ID4gPiAgICAgICAgICAgICAgICAgICAgICAgZ3Bpb3MgPSA8JnBpbmN0cmwgNSAx
PjsKPiA+ID4gPiAgICAgICAgICAgICAgIH07Cj4gPiA+ID4gLSAgICAgICAgICAgICB3cHNfZ3Jl
ZW4gewo+ID4gPiA+IC0gICAgICAgICAgICAgICAgICAgICBsYWJlbCA9ICJER05EMzcwMHYxXzM4
MDBCOmdyZWVuOndwcyI7Cj4gPiA+ID4gKyAgICAgICAgICAgICBsZWRAMTEgewo+ID4gPiA+ICsg
ICAgICAgICAgICAgICAgICAgICBsYWJlbCA9ICJkZ25kMzcwMC12MTpncmVlbjp3cHMiOwo+ID4g
PiA+ICAgICAgICAgICAgICAgICAgICAgICBncGlvcyA9IDwmcGluY3RybCAxMSAxPjsKPiA+ID4g
PiAgICAgICAgICAgICAgIH07Cj4gPiA+ID4gLSAgICAgICAgICAgICB1c2Jmcm9udF9ncmVlbiB7
Cj4gPiA+ID4gLSAgICAgICAgICAgICAgICAgICAgIGxhYmVsID0gIkRHTkQzNzAwdjFfMzgwMEI6
Z3JlZW46dXNiLWZyb250IjsKPiA+ID4gPiArICAgICAgICAgICAgIGxlZEAxMyB7Cj4gPiA+ID4g
KyAgICAgICAgICAgICAgICAgICAgIGxhYmVsID0gImRnbmQzNzAwLXYxOmdyZWVuOnVzYi1mcm9u
dCI7Cj4gPiA+ID4gICAgICAgICAgICAgICAgICAgICAgIGdwaW9zID0gPCZwaW5jdHJsIDEzIDE+
Owo+ID4gPiA+ICAgICAgICAgICAgICAgfTsKPiA+ID4gPiAtICAgICAgICAgICAgIHVzYmJhY2tf
Z3JlZW4gewo+ID4gPiA+IC0gICAgICAgICAgICAgICAgICAgICBsYWJlbCA9ICJER05EMzcwMHYx
XzM4MDBCOmdyZWVuOnVzYi1iYWNrIjsKPiA+ID4gPiArICAgICAgICAgICAgIGxlZEAxNCB7Cj4g
PiA+ID4gKyAgICAgICAgICAgICAgICAgICAgIGxhYmVsID0gImRnbmQzNzAwLXYxOmdyZWVuOnVz
Yi1iYWNrIjsKPiA+ID4gPiAgICAgICAgICAgICAgICAgICAgICAgZ3Bpb3MgPSA8JnBpbmN0cmwg
MTQgMT47Cj4gPiA+ID4gICAgICAgICAgICAgICB9Owo+ID4gPiA+IC0gICAgICAgICAgICAgcG93
ZXJfcmVkIHsKPiA+ID4gPiAtICAgICAgICAgICAgICAgICAgICAgbGFiZWwgPSAiREdORDM3MDB2
MV8zODAwQjpyZWQ6cG93ZXIiOwo+ID4gPiA+ICsgICAgICAgICAgICAgbGVkX3Bvd2VyX3JlZDog
bGVkQDIyIHsKPiA+ID4gPiArICAgICAgICAgICAgICAgICAgICAgbGFiZWwgPSAiZGduZDM3MDAt
djE6cmVkOnBvd2VyIjsKPiA+ID4gPiAgICAgICAgICAgICAgICAgICAgICAgZ3Bpb3MgPSA8JnBp
bmN0cmwgMjIgMT47Cj4gPiA+ID4gICAgICAgICAgICAgICB9Owo+ID4gPiA+IC0gICAgICAgICAg
ICAgbGFuX2dyZWVuIHsKPiA+ID4gPiAtICAgICAgICAgICAgICAgICAgICAgbGFiZWwgPSAiREdO
RDM3MDB2MV8zODAwQjpncmVlbjpsYW4iOwo+ID4gPiA+ICsgICAgICAgICAgICAgbGVkQDIzIHsK
PiA+ID4gPiArICAgICAgICAgICAgICAgICAgICAgbGFiZWwgPSAiZGduZDM3MDAtdjE6Z3JlZW46
bGFuIjsKPiA+ID4gPiAgICAgICAgICAgICAgICAgICAgICAgZ3Bpb3MgPSA8JnBpbmN0cmwgMjMg
MT47Cj4gPiA+ID4gICAgICAgICAgICAgICB9Owo+ID4gPiA+IC0gICAgICAgICAgICAgbGVkX3Bv
d2VyX2dyZWVuOiBwb3dlcl9ncmVlbiB7Cj4gPiA+ID4gLSAgICAgICAgICAgICAgICAgICAgIGxh
YmVsID0gIkRHTkQzNzAwdjFfMzgwMEI6Z3JlZW46cG93ZXIiOwo+ID4gPiA+ICsgICAgICAgICAg
ICAgbGVkX3Bvd2VyX2dyZWVuOiBsZWRAMjQgewo+ID4gPiA+ICsgICAgICAgICAgICAgICAgICAg
ICBsYWJlbCA9ICJkZ25kMzcwMC12MTpncmVlbjpwb3dlciI7Cj4gPiA+ID4gICAgICAgICAgICAg
ICAgICAgICAgIGdwaW9zID0gPCZwaW5jdHJsIDI0IDE+Owo+ID4gPiA+ICAgICAgICAgICAgICAg
ICAgICAgICBkZWZhdWx0LXN0YXRlID0gIm9uIjsKPiA+ID4gPiAgICAgICAgICAgICAgIH07Cj4g
PiA+ID4gLSAgICAgICAgICAgICB3aWZpMmdfZ3JlZW4gewo+ID4gPiA+IC0gICAgICAgICAgICAg
ICAgICAgICBsYWJlbCA9ICJER05EMzcwMHYxXzM4MDBCOmdyZWVuOndpZmkyZyI7Cj4gPiA+ID4g
KyAgICAgICAgICAgICBsZWRAMjYgewo+ID4gPiA+ICsgICAgICAgICAgICAgICAgICAgICBsYWJl
bCA9ICJkZ25kMzcwMC12MTpncmVlbjp3aWZpMmciOwo+ID4gPiA+ICAgICAgICAgICAgICAgICAg
ICAgICBncGlvcyA9IDwmcGluY3RybCAyNiAxPjsKPiA+ID4gPiAgICAgICAgICAgICAgIH07Cj4g
PiA+ID4gLSAgICAgICAgICAgICB3aWZpNWdfYmx1ZSB7Cj4gPiA+ID4gLSAgICAgICAgICAgICAg
ICAgICAgIGxhYmVsID0gIkRHTkQzNzAwdjFfMzgwMEI6Ymx1ZTp3aWZpNWciOwo+ID4gPiA+ICsg
ICAgICAgICAgICAgbGVkQDI3IHsKPiA+ID4gPiArICAgICAgICAgICAgICAgICAgICAgbGFiZWwg
PSAiZGduZDM3MDAtdjE6Ymx1ZTp3aWZpNWciOwo+ID4gPiA+ICAgICAgICAgICAgICAgICAgICAg
ICBncGlvcyA9IDwmcGluY3RybCAyNyAxPjsKPiA+ID4gPiAgICAgICAgICAgICAgIH07Cj4gPiA+
ID4gICAgICAgfTsKPiA+ID4gPiBAQCAtMTA3LDI1ICsxMDcsMjUgQEAKPiA+ID4gPiAgICAgICAg
ICAgICAgICNhZGRyZXNzLWNlbGxzID0gPDE+Owo+ID4gPiA+ICAgICAgICAgICAgICAgI3NpemUt
Y2VsbHMgPSA8MT47Cj4gPiA+ID4KPiA+ID4gPiAtICAgICAgICAgICAgIGNmZUAwIHsKPiA+ID4g
PiArICAgICAgICAgICAgIHBhcnRpdGlvbkAwIHsKPiA+ID4gPiAgICAgICAgICAgICAgICAgICAg
ICAgbGFiZWwgPSAiQ0ZFIjsKPiA+ID4gPiAgICAgICAgICAgICAgICAgICAgICAgcmVnID0gPDB4
MDAwMDAwIDB4MDIwMDAwPjsKPiA+ID4gPiAgICAgICAgICAgICAgICAgICAgICAgcmVhZC1vbmx5
Owo+ID4gPiA+ICAgICAgICAgICAgICAgfTsKPiA+ID4gPgo+ID4gPiA+IC0gICAgICAgICAgICAg
bGludXhAMjAwMDAgewo+ID4gPiA+ICsgICAgICAgICAgICAgcGFydGl0aW9uQDIwMDAwIHsKPiA+
ID4gPiAgICAgICAgICAgICAgICAgICAgICAgbGFiZWwgPSAibGludXgiOwo+ID4gPiA+ICAgICAg
ICAgICAgICAgICAgICAgICByZWcgPSA8MHgwMjAwMDAgMHgxZTIwMDAwPjsKPiA+ID4gPiAgICAg
ICAgICAgICAgICAgICAgICAgY29tcGF0aWJsZSA9ICJicmNtLGJjbTk2M3h4LWltYWdldGFnIjsK
PiA+ID4gPiAgICAgICAgICAgICAgIH07Cj4gPiA+ID4KPiA+ID4gPiAtICAgICAgICAgICAgIGJv
YXJkX2RhdGFAMWU0MDAwMCB7Cj4gPiA+ID4gKyAgICAgICAgICAgICBwYXJ0aXRpb25AMWU0MDAw
MCB7Cj4gPiA+ID4gICAgICAgICAgICAgICAgICAgICAgIGxhYmVsID0gImJvYXJkX2RhdGEiOwo+
ID4gPiA+ICAgICAgICAgICAgICAgICAgICAgICByZWcgPSA8MHgxZTQwMDAwIDB4MWEwMDAwPjsK
PiA+ID4gPiAgICAgICAgICAgICAgICAgICAgICAgcmVhZC1vbmx5Owo+ID4gPiA+ICAgICAgICAg
ICAgICAgfTsKPiA+ID4gPgo+ID4gPiA+IC0gICAgICAgICAgICAgbnZyYW1AMWZlMDAwMCB7Cj4g
PiA+ID4gKyAgICAgICAgICAgICBwYXJ0aXRpb25AMWZlMDAwMCB7Cj4gPiA+ID4gICAgICAgICAg
ICAgICAgICAgICAgIGxhYmVsID0gIm52cmFtIjsKPiA+ID4gPiAgICAgICAgICAgICAgICAgICAg
ICAgcmVnID0gPDB4MWZlMDAwMCAweDIwMDAwPjsKPiA+ID4gPiAgICAgICAgICAgICAgIH07Cj4g
PiA+ID4gQEAgLTE1NiwyMiArMTU2LDIyIEBACj4gPiA+ID4KPiA+ID4gPiAgICAgICAgICAgICAg
ICAgICAgICAgbGFuQDEgewo+ID4gPiA+ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIHJl
ZyA9IDwxPjsKPiA+ID4gPiAtICAgICAgICAgICAgICAgICAgICAgICAgICAgICBsYWJlbCA9ICJs
YW4xIjsKPiA+ID4gPiArICAgICAgICAgICAgICAgICAgICAgICAgICAgICBsYWJlbCA9ICJsYW40
IjsKPiA+ID4gPiAgICAgICAgICAgICAgICAgICAgICAgfTsKPiA+ID4gPgo+ID4gPiA+ICAgICAg
ICAgICAgICAgICAgICAgICBsYW5AMiB7Cj4gPiA+ID4gICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgcmVnID0gPDI+Owo+ID4gPiA+IC0gICAgICAgICAgICAgICAgICAgICAgICAgICAgIGxh
YmVsID0gImxhbjIiOwo+ID4gPiA+ICsgICAgICAgICAgICAgICAgICAgICAgICAgICAgIGxhYmVs
ID0gImxhbjMiOwo+ID4gPiA+ICAgICAgICAgICAgICAgICAgICAgICB9Owo+ID4gPiA+Cj4gPiA+
ID4gICAgICAgICAgICAgICAgICAgICAgIGxhbkAzIHsKPiA+ID4gPiAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICByZWcgPSA8Mz47Cj4gPiA+ID4gLSAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgbGFiZWwgPSAibGFuMyI7Cj4gPiA+ID4gKyAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgbGFiZWwgPSAibGFuMiI7Cj4gPiA+ID4gICAgICAgICAgICAgICAgICAgICAgIH07Cj4gPiA+
ID4KPiA+ID4gPiAgICAgICAgICAgICAgICAgICAgICAgbGFuQDQgewo+ID4gPiA+ICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgIHJlZyA9IDw0PjsKPiA+ID4gPiAtICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICBsYWJlbCA9ICJsYW40IjsKPiA+ID4gPiArICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICBsYWJlbCA9ICJsYW4xIjsKPiA+ID4gPiAgICAgICAgICAgICAgICAgICAgICAg
fTsKPiA+ID4gPgo+ID4gPiA+ICAgICAgICAgICAgICAgICAgICAgICBjcHVAOCB7Cj4gPiA+ID4g
ZGlmZiAtLWdpdCBhL3RhcmdldC9saW51eC9iY202M3h4L3BhdGNoZXMtNS40LzU0OS0KPiA+ID4g
PiBib2FyZF9ER05EMzcwMHYxXzM4MDBCLnBhdGNoIGIvdGFyZ2V0L2xpbnV4L2JjbTYzeHgvcGF0
Y2hlcy0KPiA+IDUuNC81NDktCj4gPiA+ID4gYm9hcmRfREdORDM3MDB2MV8zODAwQi5wYXRjaAo+
ID4gPiA+IGluZGV4IDkzNmFhYjExNWIuLjc1NjllOTY0M2UgMTAwNjQ0Cj4gPiA+ID4gLS0tIGEv
dGFyZ2V0L2xpbnV4L2JjbTYzeHgvcGF0Y2hlcy01LjQvNTQ5LQo+ID4gPiA+IGJvYXJkX0RHTkQz
NzAwdjFfMzgwMEIucGF0Y2gKPiA+ID4gPiArKysgYi90YXJnZXQvbGludXgvYmNtNjN4eC9wYXRj
aGVzLTUuNC81NDktCj4gPiA+ID4gYm9hcmRfREdORDM3MDB2MV8zODAwQi5wYXRjaAo+ID4gPiA+
IEBAIC01LDcgKzUsNyBAQAo+ID4gPiA+ICAgfTsKPiA+ID4gPgo+ID4gPiA+ICArc3RhdGljIHN0
cnVjdCBib2FyZF9pbmZvIF9faW5pdGRhdGEgYm9hcmRfREdORDM3MDB2MV8zODAwQiA9IHsKPiA+
ID4gPiAtKyAgICAubmFtZSAgICAgICAgICAgICAgICAgICAgICAgICAgID0gIkRHTkQzNzAwdjFf
MzgwMEIiLAo+ID4gPiA+ICsrICAgIC5uYW1lICAgICAgICAgICAgICAgICAgICAgICAgICAgPSAi
VTEyTDE0NFQwMSIsCj4gPiA+ID4gICsgICAgLmV4cGVjdGVkX2NwdV9pZCAgICAgICAgICAgICAg
ICA9IDB4NjM2OCwKPiA+ID4gPiAgKwo+ID4gPiA+ICArICAgIC5oYXNfcGNpICAgICAgICAgICAg
ICAgICAgICAgICAgPSAxLAo+ID4gPiA+IC0tCj4gPiA+ID4gMi4yNi4yCj4gPiA+ID4KPiA+ID4g
Pgo+ID4gPiA+Cj4gPiA+ID4KPiA+ID4gPgo+ID4gPiA+IF9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCj4gPiA+ID4gb3BlbndydC1kZXZlbCBtYWlsaW5nIGxp
c3QKPiA+ID4gPiBvcGVud3J0LWRldmVsQGxpc3RzLm9wZW53cnQub3JnCj4gPiA+ID4gaHR0cHM6
Ly9saXN0cy5vcGVud3J0Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL29wZW53cnQtZGV2ZWwKPiA+Cj4g
PiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+ID4gb3Bl
bndydC1kZXZlbCBtYWlsaW5nIGxpc3QKPiA+IG9wZW53cnQtZGV2ZWxAbGlzdHMub3BlbndydC5v
cmcKPiA+IGh0dHBzOi8vbGlzdHMub3BlbndydC5vcmcvbWFpbG1hbi9saXN0aW5mby9vcGVud3J0
LWRldmVsCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpv
cGVud3J0LWRldmVsIG1haWxpbmcgbGlzdApvcGVud3J0LWRldmVsQGxpc3RzLm9wZW53cnQub3Jn
Cmh0dHBzOi8vbGlzdHMub3BlbndydC5vcmcvbWFpbG1hbi9saXN0aW5mby9vcGVud3J0LWRldmVs
Cg==
