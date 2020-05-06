Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 66B891C7C6D
	for <lists+openwrt-devel@lfdr.de>; Wed,  6 May 2020 23:29:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=KlYBba66BFA++iRd90peH0+OVz+sUCm+u9+HiOMg05c=; b=oe4FzcwN8qyfyOVVLsQ23qhN+i
	/M6l4VIpJkQj7pGRPWmGsJZ9JPWjTDG0smoE2m8wZ4YviFNRjolB9TkYPLCb4eF2m55Rc9nYHGUwG
	1rQpJkZu2FQ25qDJDs0K4FyxMf/kwwCbS/oPPu/gr1bUL8EjHkTuCMf/yYNAAlcksf7kAQGCGhgiF
	Tx0UtylZ5Vn5SYrBuRikbYqpY7ZCb539xi5FFqZXrtJ3Eb4IMkPsObxhVL+I1bTigVjgEpCHiHbHj
	ngBhr2KBmY3FMJgs2Gk8XiW4JVYNJDVtJRjCCQ13/jIMhcz7uVa/I3igjF+c1Kk7/jUxKjH6gQa96
	oqF1aLkg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWRb5-0004PQ-Ar; Wed, 06 May 2020 21:28:55 +0000
Received: from mail-ed1-x543.google.com ([2a00:1450:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWRay-0004Oq-Fz
 for openwrt-devel@lists.openwrt.org; Wed, 06 May 2020 21:28:50 +0000
Received: by mail-ed1-x543.google.com with SMTP id d16so3399959edq.7
 for <openwrt-devel@lists.openwrt.org>; Wed, 06 May 2020 14:28:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :content-transfer-encoding;
 bh=IP8FD8n8sAc2Dvl5gaS91M4VVgT11uJkN9yS5O2goU0=;
 b=YLB4rG1xRE7XGTztYWOA7PKE1bZFXBpI6QwhkY6g9NfIeaVm1vrl0MqPyKBI8DPIPa
 a7ALL9997kGEbF6c6vv5LIs7DEKcJsUDzVCNoseEYKQV9M/eLHzaOvttJ1gSqvzU1YzP
 xyDXQYuvBVrLzQj7jaaJkcyO4+NWcF466JAKwTVCY1XoNS891TKcvS0HrCeuFOel8rQV
 jDpxGevJEddia1BBbaIrDiPrB+chdFFCTNnMLjcTrDjYoorape2CS//6PV1HJgCry2aC
 YukEB5MVR4tFPMOpu+1rX9xwf8Mrcggel0oVNQ6Bn+xz+HBT5S//K/U3af1Iw7XYNvrw
 aWVw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:content-transfer-encoding;
 bh=IP8FD8n8sAc2Dvl5gaS91M4VVgT11uJkN9yS5O2goU0=;
 b=JnlMUDiZJIO9XH8/bUrmPU/EoNr7R01G/hnG9Y236dmtkvjtfVJiFdv89P4+2oGhJc
 sI1gT9tGlcOOSmZer0j7oBlkFhgEXW0hQ2CFiXz5suLB75HS6/QiyUbN3wpPLDwJeOjU
 sGgkQqlu+hV+fYEFP4jGb3ydelpVhh3b3vmLeQc1Rdo1nXcfafGqn495DDNAiaUO5ko8
 ebxqWuZLOTqY9B+jj1vWaVRdrDHN/GLQXaqzHYX17QpKWJXf9Ha1SFqjRjqaWPldtcEt
 phuqgphyw3NoRx7e9Fv13T0yZaqGwdK+ufRLy096ov/MlT89aa+SBTtUv3ojrqPl+Ewf
 kS0Q==
X-Gm-Message-State: AGi0PuZq1za6QP+aZ19C3Q46m5iTPpojgmiMKEUd11Ote5XQAtq321+8
 Tom0Q76E6XE/Gfpq8oiOrTk5Cj2FA+jAOSKkBvAt2GSD9Ng=
X-Google-Smtp-Source: APiQypIUvp9qPF0VnWtf+440YpJZooXx5VqSjozdLaWF/ta6Zri9PPSeiez8BVEmot717hGFzwoSB+/ZeAromt6FFoM=
X-Received: by 2002:a05:6402:4:: with SMTP id d4mr8806201edu.344.1588800525886; 
 Wed, 06 May 2020 14:28:45 -0700 (PDT)
MIME-Version: 1.0
References: <20200410223709.1974-1-dobrovolskiy.alexey@gmail.com>
 <CANCYDrwqC8aXJvOJu=oGzv-L3rgxW58-EG=ETyqWKc-O4EVsTQ@mail.gmail.com>
In-Reply-To: <CANCYDrwqC8aXJvOJu=oGzv-L3rgxW58-EG=ETyqWKc-O4EVsTQ@mail.gmail.com>
From: Alexey Dobrovolskiy <dobrovolskiy.alexey@gmail.com>
Date: Thu, 7 May 2020 00:28:34 +0300
Message-ID: <CANCYDrwFP7Kujm6gJxzZMsNXBBBAMC4ciVs+RER8mRkHS6JboA@mail.gmail.com>
To: openwrt-devel@lists.openwrt.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200506_142848_534085_7AF1F514 
X-CRM114-Status: GOOD (  22.57  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:543 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [dobrovolskiy.alexey[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
Subject: Re: [OpenWrt-Devel] [RFC PATCH] ramips: remove patches for USB-dwc2
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

SGksCkkgd2FzIGFibGUgdG8gZ2V0IFVTQiB0byB3b3JrIHdpdGggdjUuNCBrZXJuZWwgYnkgYXBw
bHlpbmcgYWRkaXRpb25hbApjaGFuZ2VzIFswXS4KQXMgZmFyIGFzIEkgdW5kZXJzdGFuZCwgcmVz
ZXQgaGFzIGJlZW4gYWRkZWQgdG8gdGhlIG1haW5saW5lIGxpbnV4Cmtlcm5lbCB3aXRoIHRoZSBj
b21taXQgODNmOGRhNTYyZjhiNTI3NWZhMTA5NWI0NTc2Mjk5Njk3MWY3YzYwNwpBbnkgY2hhbmNl
IHRvIGFjY2VwdCBteSBwYXRjaCBmcm9tIHRoaXMgdGhyZWFkPwoKWzBdIGh0dHBzOi8vcGF0Y2h3
b3JrLm96bGFicy5vcmcvcHJvamVjdC9vcGVud3J0L3BhdGNoLzIwMjAwNTA2MjA0ODE1LjE3NzYt
MS1kb2Jyb3ZvbHNraXkuYWxleGV5QGdtYWlsLmNvbS8KCkJlc3QgcmVnYXJkcywKQWxleGV5CgrR
gdGALCAyMiDQsNC/0YAuIDIwMjAg0LMuINCyIDAyOjIwLCBBbGV4ZXkgRG9icm92b2xza2l5Cjxk
b2Jyb3ZvbHNraXkuYWxleGV5QGdtYWlsLmNvbT46Cj4KPiBIaSwKPiBVU0IgZG9lcyBub3Qgd29y
ayBpbiBtYXN0ZXIgYXQgMzVmMjA4ZGEzYyBidWlsdCB3aXRoIHRlc3Rpbmcga2VybmVsCj4gNS40
IHdpdGggb3Igd2l0aG91dCAwMDMyLVVTQi1kd2MyLWFkZC1kZXZpY2VfcmVzZXQucGF0Y2guCj4g
KHJhbWlwcywgWnlYRUwgS2VlbmV0aWMpCj4gSW4gYm9vdCBsb2c6Cj4gWyAgICA2Ljg4ODI5M10g
dXNiY29yZTogcmVnaXN0ZXJlZCBuZXcgaW50ZXJmYWNlIGRyaXZlciB1c2Jmcwo+IFsgICAgNi44
OTk2NDFdIHVzYmNvcmU6IHJlZ2lzdGVyZWQgbmV3IGludGVyZmFjZSBkcml2ZXIgaHViCj4gWyAg
ICA2LjkxMDYzMF0gdXNiY29yZTogcmVnaXN0ZXJlZCBuZXcgZGV2aWNlIGRyaXZlciB1c2IKPiBb
ICAgIDYuOTMwOTA0XSBlaGNpX2hjZDogVVNCIDIuMCAnRW5oYW5jZWQnIEhvc3QgQ29udHJvbGxl
ciAoRUhDSSkgRHJpdmVyCj4gWyAgICA2Ljk1NTA4Nl0gU0NTSSBzdWJzeXN0ZW0gaW5pdGlhbGl6
ZWQKPiBbICAgIDYuOTcwMzk0XSBlaGNpLWZzbDogRnJlZXNjYWxlIEVIQ0kgSG9zdCBjb250cm9s
bGVyIGRyaXZlcgo+IFsgICAgNi45ODUyMzVdIGVoY2ktcGxhdGZvcm06IEVIQ0kgZ2VuZXJpYyBw
bGF0Zm9ybSBkcml2ZXIKPiBbICAgIDcuMDA2NjY2XSBkd2MyIDEwMWMwMDAwLm90ZzogQ29uZmln
dXJhdGlvbiBtaXNtYXRjaC4gZHJfbW9kZSBmb3JjZWQgdG8gaG9zdAo+IFsgICAgNy4wMzMxODld
IGR3YzIgMTAxYzAwMDAub3RnOiBkd2MyX2NvcmVfcmVzZXQ6IEhBTkchIEFIQiBJZGxlCj4gdGlt
ZW91dCBHUlNUQ1RMIEdSU1RDVExfQUhCSURMRQo+IFsgICAgNy4wNTA2MzddIGR3YzI6IHByb2Jl
IG9mIDEwMWMwMDAwLm90ZyBmYWlsZWQgd2l0aCBlcnJvciAtMTYKPiBbICAgIDcuMDc0NjYyXSB1
c2Jjb3JlOiByZWdpc3RlcmVkIG5ldyBpbnRlcmZhY2UgZHJpdmVyIHVzYi1zdG9yYWdlCj4KPiBG
dWxsIGxvZyBhdHRhY2hlZCB0byBGUyMyOTY0Cj4KPiBCZXN0IHJlZ2FyZHMsCj4gQWxleGV5Cj4K
PiDRgdCxLCAxMSDQsNC/0YAuIDIwMjAg0LMuINCyIDAxOjM3LCBBbGV4ZXkgRG9icm92b2xza3kg
PGRvYnJvdm9sc2tpeS5hbGV4ZXlAZ21haWwuY29tPjoKPiA+Cj4gPiBJbiBGUyMyNzM4IHdlIGNh
biBzZWUgdGhhdCBwYXRjaCBmaXJzdCBpbnRyb2R1Y2VkIGluCj4gPiBlOGViY2ZmICgicmFtaXBz
OiBhZGQgYSBleHBsaWNpdCByZXNldCB0byBkd2MyIikKPiA+IGJyZWFrcyBVU0IgZnVuY3Rpb25h
bGl0eSBzaW5jZSAxOC4wNi4gVGh1cywgdGhpcyBwYXRjaCBzaG91bGQgYmUgcmVtb3ZlZC4KPiA+
Cj4gPiBSZW1vdmVkOgo+ID4gLSAwMDMyLVVTQi1kd2MyLWFkZC1kZXZpY2VfcmVzZXQucGF0Y2gK
PiA+Cj4gPiBGaXhlczogRlMjMjczOAo+ID4gRml4ZXM6IEZTIzI5NjQKPiA+Cj4gPiBTaWduZWQt
b2ZmLWJ5OiBBbGV4ZXkgRG9icm92b2xza3kgPGRvYnJvdm9sc2tpeS5hbGV4ZXlAZ21haWwuY29t
Pgo+ID4gLS0tCj4gPgo+ID4gTm90ZXM6Cj4gPiAgICAgSSBjYW7igJl0IGFzc2VzcyB3aGV0aGVy
IHRoZSByb290IGNhdXNlIG9mIHRoZSBlOGViY2ZmIHBhdGNoIGhhcyBiZWVuIGZpeGVkCj4gPiAg
ICAgaW4gdXBzdHJlYW0gb3IgdGhlIHBhdGNoIG5lZWRzIHRvIGJlIHJld3JpdHRlbi4gRnJvbSB0
aGUgZGVzY3JpcHRpb24KPiA+ICAgICBvZiB0aGUgYnVncywgaXQgaXMgb25seSBjbGVhciB0aGF0
IGluIHRoZSBsYXRlc3QgT3BlbldydCB2ZXJzaW9ucyB0aGlzCj4gPiAgICAgcGF0Y2ggZG9lcyBu
b3Qgd29yayBjb3JyZWN0bHkuCj4gPgo+ID4gICAgIEkgYnVpbHQgMTguMDYuMiBhbmQgbWFzdGVy
IGF0IDkxYzYxYWFlMjAwZWNmOThlMzMyNDgyZDM5NWJlZGE4MTlkNmE0ZmEKPiA+ICAgICBmb3Ig
WnlYRUwgS2VlbmV0aWMgd2l0aCAwMDMyLVVTQi1kd2MyLWFkZC1kZXZpY2VfcmVzZXQucGF0Y2gg
cmVtb3ZlZAo+ID4gICAgIGFzIGRlc2NyaWJlZCBpbiBGUyMyNzM4IGFuZCBVU0Igd29ya3Mgd2l0
aCBhIFVTQiBmbGFzaCBkcml2ZSAoRlMjMjk2NCkuCj4gPgo+ID4gIC4uLi8wMDMyLVVTQi1kd2My
LWFkZC1kZXZpY2VfcmVzZXQucGF0Y2ggICAgICB8IDI5IC0tLS0tLS0tLS0tLS0tLS0tLS0KPiA+
ICAuLi4vMDAzMi1VU0ItZHdjMi1hZGQtZGV2aWNlX3Jlc2V0LnBhdGNoICAgICAgfCAyOSAtLS0t
LS0tLS0tLS0tLS0tLS0tCj4gPiAgMiBmaWxlcyBjaGFuZ2VkLCA1OCBkZWxldGlvbnMoLSkKPiA+
ICBkZWxldGUgbW9kZSAxMDA2NDQgdGFyZ2V0L2xpbnV4L3JhbWlwcy9wYXRjaGVzLTQuMTQvMDAz
Mi1VU0ItZHdjMi1hZGQtZGV2aWNlX3Jlc2V0LnBhdGNoCj4gPiAgZGVsZXRlIG1vZGUgMTAwNjQ0
IHRhcmdldC9saW51eC9yYW1pcHMvcGF0Y2hlcy01LjQvMDAzMi1VU0ItZHdjMi1hZGQtZGV2aWNl
X3Jlc2V0LnBhdGNoCj4gPgo+ID4gZGlmZiAtLWdpdCBhL3RhcmdldC9saW51eC9yYW1pcHMvcGF0
Y2hlcy00LjE0LzAwMzItVVNCLWR3YzItYWRkLWRldmljZV9yZXNldC5wYXRjaCBiL3RhcmdldC9s
aW51eC9yYW1pcHMvcGF0Y2hlcy00LjE0LzAwMzItVVNCLWR3YzItYWRkLWRldmljZV9yZXNldC5w
YXRjaAo+ID4gZGVsZXRlZCBmaWxlIG1vZGUgMTAwNjQ0Cj4gPiBpbmRleCBjMDRlMmRiNjYxLi4w
MDAwMDAwMDAwCj4gPiAtLS0gYS90YXJnZXQvbGludXgvcmFtaXBzL3BhdGNoZXMtNC4xNC8wMDMy
LVVTQi1kd2MyLWFkZC1kZXZpY2VfcmVzZXQucGF0Y2gKPiA+ICsrKyAvZGV2L251bGwKPiA+IEBA
IC0xLDI5ICswLDAgQEAKPiA+IC1Gcm9tIGE3NThlMDg3MGM2ZDFlNGIwMjcyZjZlN2Y5ZWZhOWZh
Y2U1NTM0YmIgTW9uIFNlcCAxNyAwMDowMDowMCAyMDAxCj4gPiAtRnJvbTogSm9obiBDcmlzcGlu
IDxibG9naWNAb3BlbndydC5vcmc+Cj4gPiAtRGF0ZTogU3VuLCAyNyBKdWwgMjAxNCAwOTo0OTow
NyArMDEwMAo+ID4gLVN1YmplY3Q6IFtQQVRDSCAzMi81M10gVVNCOiBkd2MyOiBhZGQgZGV2aWNl
X3Jlc2V0KCkKPiA+IC0KPiA+IC1TaWduZWQtb2ZmLWJ5OiBKb2huIENyaXNwaW4gPGJsb2dpY0Bv
cGVud3J0Lm9yZz4KPiA+IC0tLS0KPiA+IC0gZHJpdmVycy91c2IvZHdjMi9oY2QuYyB8ICAgIDMg
KysrCj4gPiAtIDEgZmlsZSBjaGFuZ2VkLCAzIGluc2VydGlvbnMoKykKPiA+IC0KPiA+IC0tLS0g
YS9kcml2ZXJzL3VzYi9kd2MyL2hjZC5jCj4gPiAtKysrIGIvZHJpdmVycy91c2IvZHdjMi9oY2Qu
Ywo+ID4gLUBAIC00OCw2ICs0OCw3IEBACj4gPiAtICNpbmNsdWRlIDxsaW51eC9pby5oPgo+ID4g
LSAjaW5jbHVkZSA8bGludXgvc2xhYi5oPgo+ID4gLSAjaW5jbHVkZSA8bGludXgvdXNiLmg+Cj4g
PiAtKyNpbmNsdWRlIDxsaW51eC9yZXNldC5oPgo+ID4gLQo+ID4gLSAjaW5jbHVkZSA8bGludXgv
dXNiL2hjZC5oPgo+ID4gLSAjaW5jbHVkZSA8bGludXgvdXNiL2NoMTEuaD4KPiA+IC1AQCAtNTIx
NSw2ICs1MjE2LDggQEAgaW50IGR3YzJfaGNkX2luaXQoc3RydWN0IGR3YzJfaHNvdGcgKmhzbwo+
ID4gLQo+ID4gLSAgICAgICByZXR2YWwgPSAtRU5PTUVNOwo+ID4gLQo+ID4gLSsgICAgICBkZXZp
Y2VfcmVzZXQoaHNvdGctPmRldik7Cj4gPiAtKwo+ID4gLSAgICAgICBoY2ZnID0gZHdjMl9yZWFk
bChoc290Zy0+cmVncyArIEhDRkcpOwo+ID4gLSAgICAgICBkZXZfZGJnKGhzb3RnLT5kZXYsICJo
Y2ZnPSUwOHhcbiIsIGhjZmcpOwo+ID4gLQo+ID4gZGlmZiAtLWdpdCBhL3RhcmdldC9saW51eC9y
YW1pcHMvcGF0Y2hlcy01LjQvMDAzMi1VU0ItZHdjMi1hZGQtZGV2aWNlX3Jlc2V0LnBhdGNoIGIv
dGFyZ2V0L2xpbnV4L3JhbWlwcy9wYXRjaGVzLTUuNC8wMDMyLVVTQi1kd2MyLWFkZC1kZXZpY2Vf
cmVzZXQucGF0Y2gKPiA+IGRlbGV0ZWQgZmlsZSBtb2RlIDEwMDY0NAo+ID4gaW5kZXggZWM4Mzdj
ZGE5My4uMDAwMDAwMDAwMAo+ID4gLS0tIGEvdGFyZ2V0L2xpbnV4L3JhbWlwcy9wYXRjaGVzLTUu
NC8wMDMyLVVTQi1kd2MyLWFkZC1kZXZpY2VfcmVzZXQucGF0Y2gKPiA+ICsrKyAvZGV2L251bGwK
PiA+IEBAIC0xLDI5ICswLDAgQEAKPiA+IC1Gcm9tIGE3NThlMDg3MGM2ZDFlNGIwMjcyZjZlN2Y5
ZWZhOWZhY2U1NTM0YmIgTW9uIFNlcCAxNyAwMDowMDowMCAyMDAxCj4gPiAtRnJvbTogSm9obiBD
cmlzcGluIDxibG9naWNAb3BlbndydC5vcmc+Cj4gPiAtRGF0ZTogU3VuLCAyNyBKdWwgMjAxNCAw
OTo0OTowNyArMDEwMAo+ID4gLVN1YmplY3Q6IFtQQVRDSCAzMi81M10gVVNCOiBkd2MyOiBhZGQg
ZGV2aWNlX3Jlc2V0KCkKPiA+IC0KPiA+IC1TaWduZWQtb2ZmLWJ5OiBKb2huIENyaXNwaW4gPGJs
b2dpY0BvcGVud3J0Lm9yZz4KPiA+IC0tLS0KPiA+IC0gZHJpdmVycy91c2IvZHdjMi9oY2QuYyB8
ICAgIDMgKysrCj4gPiAtIDEgZmlsZSBjaGFuZ2VkLCAzIGluc2VydGlvbnMoKykKPiA+IC0KPiA+
IC0tLS0gYS9kcml2ZXJzL3VzYi9kd2MyL2hjZC5jCj4gPiAtKysrIGIvZHJpdmVycy91c2IvZHdj
Mi9oY2QuYwo+ID4gLUBAIC00OSw2ICs0OSw3IEBACj4gPiAtICNpbmNsdWRlIDxsaW51eC9pby5o
Pgo+ID4gLSAjaW5jbHVkZSA8bGludXgvc2xhYi5oPgo+ID4gLSAjaW5jbHVkZSA8bGludXgvdXNi
Lmg+Cj4gPiAtKyNpbmNsdWRlIDxsaW51eC9yZXNldC5oPgo+ID4gLQo+ID4gLSAjaW5jbHVkZSA8
bGludXgvdXNiL2hjZC5oPgo+ID4gLSAjaW5jbHVkZSA8bGludXgvdXNiL2NoMTEuaD4KPiA+IC1A
QCAtNTAyMyw2ICs1MDI0LDggQEAgaW50IGR3YzJfaGNkX2luaXQoc3RydWN0IGR3YzJfaHNvdGcg
Kmhzbwo+ID4gLQo+ID4gLSAgICAgICByZXR2YWwgPSAtRU5PTUVNOwo+ID4gLQo+ID4gLSsgICAg
ICBkZXZpY2VfcmVzZXQoaHNvdGctPmRldik7Cj4gPiAtKwo+ID4gLSAgICAgICBoY2ZnID0gZHdj
Ml9yZWFkbChoc290ZywgSENGRyk7Cj4gPiAtICAgICAgIGRldl9kYmcoaHNvdGctPmRldiwgImhj
Zmc9JTA4eFxuIiwgaGNmZyk7Cj4gPiAtCj4gPiAtLQo+ID4gMi4xNy4xCj4gPgoKX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18Kb3BlbndydC1kZXZlbCBtYWls
aW5nIGxpc3QKb3BlbndydC1kZXZlbEBsaXN0cy5vcGVud3J0Lm9yZwpodHRwczovL2xpc3RzLm9w
ZW53cnQub3JnL21haWxtYW4vbGlzdGluZm8vb3BlbndydC1kZXZlbAo=
