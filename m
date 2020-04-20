Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C0091B0523
	for <lists+openwrt-devel@lfdr.de>; Mon, 20 Apr 2020 11:02:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7Muu5Rg+pIM1/B0Nvp8j5iLxN4zT1U46/KlEYsuP//Y=; b=cKY+mP6bF/FVgi
	ZVqGQBYMScMMx323lMQwBtith1nW2TpAv1OyHQY9R+lsSx1z+ISLqDRFDenyystgpmY+FzG3+fHCE
	BWPfE8hLKZyE+Rr6vSrzBb38+WQUHpPvkUbOhb9cvB9XTV4j0WI+0L+e1DSwT0XZ6jW/fwvUrWwD0
	cqft3i5xn4HGpBANdK9wkhPpNccbhrjMDfizB3dvRmDPyy46JbbNcE1NaxpxlM/HxRKhK9iYuMlEX
	PxTlEzylxKiPXaYbXpSlyOnQahPNP/woglgFxSWbMDmo6qnrFAj5dDwkJpMfQA/UIAa4fHkUpR4Cc
	xgvbXLNwt4B7LYF+kGuQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQSJd-0002b1-VW; Mon, 20 Apr 2020 09:02:09 +0000
Received: from mail-qv1-xf44.google.com ([2607:f8b0:4864:20::f44])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQSJT-0002Wl-94
 for openwrt-devel@lists.openwrt.org; Mon, 20 Apr 2020 09:02:01 +0000
Received: by mail-qv1-xf44.google.com with SMTP id v38so4287828qvf.6
 for <openwrt-devel@lists.openwrt.org>; Mon, 20 Apr 2020 02:01:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=bb/bfgyGWfFcxgyEgVbBwdux7IWtH/l2/041yCpzdiA=;
 b=DIBVICw4RED/ME5xHPHyK52rP/4uuNdR5CkjbD1tqhThWRFbcCYCskrUKa71//Ptc7
 ZKWJ6Zlpm5gcsMrp3ZugSYWBIv7qqhL9deUvl6kLU5JysrzSSVX9R972t/ErkzyDyjzz
 QMDqKLZy7Rq/B9inc7zH+EYaQtCMOGvAZ6PURSYtiKxKBXlQhhlD6ZNGJZ73hXNIxXzR
 B5ptxccAkhGn2IqaCIr6GMDmtDNUy8SgXkLYIMc1PJMeDmgZTSq83vLd883xOMthc7Oa
 8c9dOMJGWxzV5J5b7Bi9D429VNkEc04bScpMylzsmev0Cmw4pcKKNbHNEOiB+561cBR2
 rnUg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=bb/bfgyGWfFcxgyEgVbBwdux7IWtH/l2/041yCpzdiA=;
 b=KRLn/D0XXGj7DT52Xn5CE0S+e+qXqdmOcsh19zVQKxWc4R/JI4WokpkKcqpwUsZsfv
 gTkb2ChFfS9Rxw+nefM3iwljnFTGxXbue+WB6PqvjADF7qmb0gCUCskxmF/OgXKtTaW1
 ewcIRC6T5BRZ54CbbWHTatk+x1xB0MxESbvj7e/LhDtWvIW4Min/NTQxxdrFWJ0cBUH7
 FYRqIZyIdN2FaHkmBbZhn3+bce66XgX9FOgHIP5GkKURV/AlAfsuan5pg51+qFXcHG7r
 rdIlYlH+QRgT1qjeEScvhiIKSJj+ues76AbCURdSJOboTkcm/eN4nOk4xDJLpCRH88/M
 1Bdw==
X-Gm-Message-State: AGi0Pub0HXCdbGIneiPpbFjTLAN9qZNGeB6il5zquX1jTvFYcbFZXC9P
 8/omrAay0h5BdboM3B3YFWnMhnDOW40JN9krZ5w=
X-Google-Smtp-Source: APiQypIcAMsr+HWrvqdudmqJ3O+1RkYkHkQBVl+kn+3vuhbWR1Ppt33v834/VP3IBRMzORiyxQl7PHtIq1ytN74xatg=
X-Received: by 2002:a0c:f004:: with SMTP id z4mr13863187qvk.29.1587373317095; 
 Mon, 20 Apr 2020 02:01:57 -0700 (PDT)
MIME-Version: 1.0
References: <20200419003715.26284-1-szab.hu@gmail.com>
 <20200419184911.5249-1-szab.hu@gmail.com>
 <20200419184911.5249-2-szab.hu@gmail.com>
 <ZMS29Q.4V5BN6QIEH3P@volatilesystems.org>
In-Reply-To: <ZMS29Q.4V5BN6QIEH3P@volatilesystems.org>
From: Szabolcs Hubai <szab.hu@gmail.com>
Date: Mon, 20 Apr 2020 11:01:46 +0200
Message-ID: <CAOZt9c-J158um4rvwLhPXio8fa3t16AQJj=8mfEVhC64CSqZ4Q@mail.gmail.com>
To: Stijn Segers <foss@volatilesystems.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200420_020159_325981_CAC9D9A7 
X-CRM114-Status: GOOD (  21.40  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:f44 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [szab.hu[at]gmail.com]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
Subject: Re: [OpenWrt-Devel] [PATCH] ramips: mt7621: use lzma-loader for
 D-Link DIR-860L B1
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
Cc: OpenWrt Development List <openwrt-devel@lists.openwrt.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

SGVsbG8sCgpTdGlqbiBTZWdlcnMgPGZvc3NAdm9sYXRpbGVzeXN0ZW1zLm9yZz4gZXp0IMOtcnRh
IChpZMWRcG9udDogMjAyMC4gw6Fwci4KMjAuLCBILCA5OjI1KToKPgo+IEhpIFN6YWJvbGNzLAo+
Cj4gT3Agem9uZGFnIDE5IGFwcmlsIDIwMjAgb20gMjB1NDkgc2NocmVlZiBTemFib2xjcyBIdWJh
aQo+IDxzemFiLmh1QGdtYWlsLmNvbT46Cj4gPiBUaGlzIGRldmljZSBoYXMgdHJvdWJsZSBleHRy
YWN0aW5nIGJpZyBrZXJuZWwgZnJvbSBmbGFzaCwKPiA+IGFuZCBzdXBwb3J0cyBMWk1BIGNvbXBy
ZXNzZWQga2VybmVscyBvbmx5Lgo+ID4KPiA+IFVzaW5nIE9wZW5XcnQga2VybmVsIGxvYWRlciBz
YXZlcyB1cyA2NCBLQiBjb21wYXJlZCB0byB0aGUgZGljdGlvbmFyeQo+ID4gc2l6ZSBsaW1pdGlu
ZyB3b3JrYXJvdW5kLgo+ID4KPiA+IEZhY3RvcnkgaW1hZ2Ugc2l6ZXMgKGNvbW1pdDogNWYxMjZj
NTQxYTc0KSB3aXRoICJDT05GSUdfQUxMX0tNT0RTPXkiOgo+ID4gLSBvcmlnaW5hbCAoIi1kMjMi
LCBkZWZhdWx0KTogNDc4NDE4OCBieXRlcywgTFpNQSBFUlJPUiAxCj4gPiAtIHdpdGggIi1kMTki
OiA0OTE1MjYwLCBMWk1BIEVSUk9SIDEKPiA+IC0gd2l0aCAiLWQxOCI6IDQ5MTUyNjAsIGRpZmYg
dG8gb3JpZ2luYWw6ICsxMjggS0IKPiA+IC0gd2l0aCAiLWQxNyI6IDQ5ODA3OTYsIGRpZmYgdG8g
b3JpZ2luYWw6ICsxOTIgS0IKPiA+IC0gd2l0aCB0aGlzIHBhdGNoOiA0ODQ5NzI0LCBkaWZmIHRv
IG9yaWdpbmFsOiArNjQgS0IKPiA+Cj4gPiBUbyBzYXZlIHNvbWUgQ1BVIGN5Y2xlLCB1c2UgbWlu
aW1hbCBjb21wcmVzc2lvbiAoIi1hMCIpIGZvciB0aGUgTFpNQQo+ID4gY29tcHJlc3NlZCB1SW1h
Z2UuCj4gPgo+ID4gVGhlIG1vc3Qgcm9idXN0IHNvbHV0aW9uIHdvdWxkIHVzZSBhIGRpZmZlcmVu
dCBsb2FkZXIsCj4gPiB3aGljaCByZWFkcyB0aGUgY29tcHJlc3NlZCBrZXJuZWwgZGlyZWN0bHkg
ZnJvbSB0aGUgZmxhc2guCj4gPiBTZWUgdGhlIHRocmVhZCBhdCBbMF0gZm9yIG1vcmUgZGV0YWls
cyEKPgo+IFRoYW5rcyBmb3IgZ2l2aW5nIHRoZSBESVItODYwTCBzb21lIGxvdmUuIEknZCBsaWtl
IHRvIHRlc3QgKGluIGZhY3QgSQo+IGFscmVhZHkKPiBkaWQgd2l0aCB5b3VyIHByZXZpb3VzIHBh
dGNoZXMpIGFuZCBob29rIHVwIHNlcmlhbCwgYmVjYXVzZSBmaXJzdCBib290Cj4gd2lsbAo+IHdv
cmsgYnV0IGFueSByZWJvb3QgKHdoZXRoZXIgSSBjaGFuZ2Ugc2V0dGluZ3Mgb3Igbm90KSB3aWxs
IGp1c3QgZ2l2ZQo+IG1lIGEKPiBibGlua2luZyBvcmFuZ2UgTEVELiBMaWtlIGNsb2Nrd29yay4K
Pgo+IFdvdWxkIHlvdSBoYXBwZW4gdG8gaGF2ZSBhbnkgcG9pbnRlcnMgKG9yIHBpY3R1cmVzKSBv
biBob3cgdG8gb3BlbiB0aGUKPiBjYXNlPwo+IEkgaGF2ZSB1bnNjcmV3ZWQgdGhlIGJvdHRvbSBi
dXQgdGhlcmUgc2VlbSB0byBiZSBsYXRjaGVzIG9uIHRoZSBpbnNpZGUKPiAoanVkZ2luZwo+IGZy
b20gdGhlIEZDQyBwaWN0dXJlcykgYW5kIEkgYW0gdW5hYmxlIHRvIHByeSBpdCBvcGVuLgo+Cj4g
VGhhbmtzIGFuZCBzb3JyeSBmb3IgdGhlIHRvcGljIGhpamFjayA6LSkuCj4KPiBTdGlqbgo+CgpJ
IGdvdCBteSBjbHVlIGZyb20gdGhlICJELUxJTksgRElSLTg2MEwgLSBkaXNhc3NlbWJsZSIgdGl0
bGVkIFlvdVR1YmUgdmlkZW8uIFswXQpJbiBzaG9ydDoKLSAzIHNjcmV3cyBvbiB0aGUgYm90dG9t
LCB1bmRlciB0aGUgcGFkczogaWYgeW91IGFyZSBsb29raW5nIGF0IHRoZQpib3R0b20gb2YgdGhl
IHJvdXRlciwgdGhlIHNjcmV3cyBhcmUgdW5kZXIgdGhlIGxlZnQsIHRoZSByaWdodCBhbmQgdGhl
CmJvdHRvbSBwYWRzCi0gb25lLCAiRElSLTg2MEwiIHRpdGxlZCBzdGlja2VyIG9uIHRoZSB0b3As
IHdpdGggYSAiY3V0IGluIiBzdGFydGluZwpwb2ludCBpbiB0aGUgZnJvbnQsIHdoZXJlIHRoZSBs
ZWRzIHJlc2lkZQotIDMgc2NyZXdzIG9uIHRoZSB0b3AsIHVuZGVyIHRoZSBzdGlja2VyCgpEaXNh
c3NlbWJsZToKLSBnZXQgb2ZmIHRoZSBwYWRzICh0aGV5IHdvbid0IHN0aWNrIGJhY2sgYWZ0ZXIg
YSBmZXcgZGF5cyA7KSwgdXNlCnZlcnkgdGhpbiBkb3VibGUgc2lkZWQgc3RpY2tlciB0byBoZWxw
IHRoZW0pCi0gZ2V0IHRoZSBib3R0b20gc2NyZXdzCi0gcGVlbCBvZmYgdGhlIHJvdW5kZWQgc3Rp
Y2tlciBmcm9tIHRoZSB0b3Agd2l0aCB0aGluIGJ1dCBmbGV4aWJsZQprbmlmZSBvciByYXpvciBi
bGFkZSwgZXRjIC4uLgotIGdldCB0aGUgdXBwZXIgc2NyZXdzCi0gc2xpZGUgdGhlIGZyb250IGFu
ZCByZWFyIGhhbGYgdmVydGljYWxseSBhIGxpdHRsZQotIHNlcGFyYXRlIHRoZW0KClRoZSBzZXJp
YWwgc2V0dGluZ3MgY2FuIGJlIGZvdW5kIG9uIHRoZSB3aWtpIFsxXToKLSBQaW5vdXQ6IFRYLCBH
TkQsIDN2MywgZW1wdHksIFJYCi0gQml0cyBwZXIgc2Vjb25kOiA1NzYwMAotIERhdGEgYml0czog
OAotIFBhcml0eTogTm9uZQotIFN0b3AgYml0czogMQotIEZsb3cgY29udHJvbDogTm9uZQoKSSBo
YXZlIGEgQ1AyMTAyIFVTQiB0byBUVEwgbW9kdWxlLCBhbmQgdXNlZCB3aXRoICJtaW5pY29tIC1E
IC9kZXYvdHR5VVNCMCIuCgoKSW50ZXJlZXN0aW5nbHksIHdoZW4gSSBjb25uZWN0ZWQgd2l0aCBz
ZXJpYWwgdG8gdGhlIHJvdXRlciBpdCB3YXMKc29tZXRpbWUgdW5zdGFibGU6CiogcmVmdXNlIHRv
IHN0YXJ0CiogZnJlZXplIGF0IGJvb3Qgc29vbiBhZnRlcjogIkVycm9yIGFwcGx5aW5nIHNldHRp
bmcsIHJldmVyc2UgdGhpbmdzCmJhY2siIG1lc3NnZQoKT3RoZXIgdGhhbiB0aGlzLCBJIGhhdmUg
bm8gcHJvYmxlbSB3aXRoIGs1LjQuCgoKClswXTogaHR0cHM6Ly95b3V0dS5iZS90ZjduTXFkVUtE
NApbMV06IGh0dHBzOi8vb3BlbndydC5vcmcvdG9oL2QtbGluay9kaXItODYwbCNhY2Nlc3Nfd2l0
aF9zZXJpYWxfY2FibGUKCgotLQpSZWdhcmRzLApTemFib2xjcwoKCj4KPiA+Cj4gPiBbMF0KPiA+
IGh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL3BpcGVybWFpbC9vcGVud3J0LWRldmVsLzIwMjAt
QXByaWwvMDIyOTI2Lmh0bWwKPiA+Cj4gPiBTaWduZWQtb2ZmLWJ5OiBTemFib2xjcyBIdWJhaSA8
c3phYi5odUBnbWFpbC5jb20+Cj4gPiAtLS0KPiA+ICB0YXJnZXQvbGludXgvcmFtaXBzL2ltYWdl
L210NzYyMS5tayB8IDQgKysrLQo+ID4gIDEgZmlsZSBjaGFuZ2VkLCAzIGluc2VydGlvbnMoKyks
IDEgZGVsZXRpb24oLSkKPiA+Cj4gPiBkaWZmIC0tZ2l0IGEvdGFyZ2V0L2xpbnV4L3JhbWlwcy9p
bWFnZS9tdDc2MjEubWsKPiA+IGIvdGFyZ2V0L2xpbnV4L3JhbWlwcy9pbWFnZS9tdDc2MjEubWsK
PiA+IGluZGV4IGFhNjgzNmQ1MGEuLmU5NTRmNzMwZGEgMTAwNjQ0Cj4gPiAtLS0gYS90YXJnZXQv
bGludXgvcmFtaXBzL2ltYWdlL210NzYyMS5tawo+ID4gKysrIGIvdGFyZ2V0L2xpbnV4L3JhbWlw
cy9pbWFnZS9tdDc2MjEubWsKPiA+IEBAIC0yMTgsNyArMjE4LDkgQEAgZGVmaW5lIERldmljZS9k
bGlua19kaXItODYwbC1iMQo+ID4gICAgJChEZXZpY2Uvc2VhbWEpCj4gPiAgICBCTE9DS1NJWkUg
Oj0gNjRrCj4gPiAgICBTRUFNQV9TSUdOQVRVUkUgOj0gd3JnYWMxM19kbGluay4yMDEzZ3VpX2Rp
cjg2MGxiCj4gPiAtICBLRVJORUwgOj0ga2VybmVsLWJpbiB8IGFwcGVuZC1kdGIgfCByZWxvY2F0
ZS1rZXJuZWwgfCBsem1hIHwKPiA+IHVJbWFnZSBsem1hCj4gPiArICBMT0FERVJfVFlQRSA6PSBi
aW4KPiA+ICsgIEtFUk5FTCA6PSBrZXJuZWwtYmluIHwgYXBwZW5kLWR0YiB8IGx6bWEgfCBsb2Fk
ZXIta2VybmVsIHwgXAo+ID4gKyAgcmVsb2NhdGUta2VybmVsIHwgbHptYSAtYTAgfCB1SW1hZ2Ug
bHptYQo+ID4gICAgSU1BR0VfU0laRSA6PSAxNjA2NGsKPiA+ICAgIERFVklDRV9WRU5ET1IgOj0g
RC1MaW5rCj4gPiAgICBERVZJQ0VfTU9ERUwgOj0gRElSLTg2MEwKPiA+IC0tCj4gPiAyLjE3LjEK
PiA+Cj4gPgo+ID4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KPiA+IG9wZW53cnQtZGV2ZWwgbWFpbGluZyBsaXN0Cj4gPiBvcGVud3J0LWRldmVsQGxpc3Rz
Lm9wZW53cnQub3JnCj4gPiBodHRwczovL2xpc3RzLm9wZW53cnQub3JnL21haWxtYW4vbGlzdGlu
Zm8vb3BlbndydC1kZXZlbAo+Cj4KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCm9wZW53cnQtZGV2ZWwgbWFpbGluZyBsaXN0Cm9wZW53cnQtZGV2ZWxAbGlz
dHMub3BlbndydC5vcmcKaHR0cHM6Ly9saXN0cy5vcGVud3J0Lm9yZy9tYWlsbWFuL2xpc3RpbmZv
L29wZW53cnQtZGV2ZWwK
