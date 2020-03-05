Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E738517A4D4
	for <lists+openwrt-devel@lfdr.de>; Thu,  5 Mar 2020 13:03:51 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-ID:Date:
	In-Reply-To:References:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pIaF2155I6Ih5uwKJi7ZIURT0ReuJkdp3WZelakk1qA=; b=S99tSUArGbUnJo
	Kg5yGPIRrExkv1wJfTxfTSfs6MHfEP84kOgq1BBwFrDL4SddOHFz9ek9aR9EodsIMGcXvC74cwF8N
	xsgppJ9oO+VlW/8+VQ8IMybmBqCovlryZvZ9/G/pyCuIWorKuiV+iR01ds+wCIfxs+auMtJxpi+7D
	Qnmspwr/jvxz655tf89LlIlVc9facLzrolCxfRqJGfE4SrRhKdjUXh4qZeySQK3aWLgWJ/pqjo39H
	LfbwyDZgvZla9h6U0dGyaRh4beWGeMckMqfKkYO4Y1CFd52P7C/+83PWCEAquQcBFt4Kfwe0HUKu/
	GZaeZUNPFBtek8zyyQ7Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j9pE8-0001Qr-R7; Thu, 05 Mar 2020 12:03:44 +0000
Received: from mout.kundenserver.de ([212.227.126.135])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j9pDx-0001QP-Ue
 for openwrt-devel@lists.openwrt.org; Thu, 05 Mar 2020 12:03:35 +0000
Received: from acer ([88.117.238.145]) by mrelayeu.kundenserver.de (mreue011
 [212.227.15.167]) with ESMTPSA (Nemesis) id 1N4Qg2-1jK2Ho0xSo-011OC3; Thu, 05
 Mar 2020 13:03:26 +0100
From: "Adrian Schmutzler" <mail@adrianschmutzler.de>
To: "'Yousong Zhou'" <yszhou4tech@gmail.com>,
 =?UTF-8?Q?'Petr_=C5=A0tetiar'?= <ynezz@true.cz>
References: <20200305114621.31104-1-ynezz@true.cz>
 <CAECwjAi2BcdXTE4YgpDROY0Mjs_CeYOgwruFdZuPKFsgFjSPZA@mail.gmail.com>
In-Reply-To: <CAECwjAi2BcdXTE4YgpDROY0Mjs_CeYOgwruFdZuPKFsgFjSPZA@mail.gmail.com>
Date: Thu, 5 Mar 2020 13:03:26 +0100
Message-ID: <007301d5f2e6$14ce1e30$3e6a5a90$@adrianschmutzler.de>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 15.0
Content-Language: de
Thread-Index: AQKg59A0nURiY7wnudVX7GbOU8VmewIZ4yIdppMtOAA=
X-Provags-ID: V03:K1:GW0GhjL/ziCoI6LodPWgoKOk3LZJ+j5DqCIVvHGs0f4GHu/5rNs
 omEpwW7PeAV3zcOFQn1LmoX7UYcszaYof56dZgDnI5glwqkvWbgQ6d/2cuWED0jU67LNaZc
 +Cp3eOwn3RvdAOMkcL8FQNviPu4tqVqi8TjPmf1xa6x/mVKtmdg5tjxvBvUIaE+wqzVJRRy
 am8xDxpM0TZzIyovYZQIQ==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:1aEAtOMknHY=:1zmlhGnugGQFrsj0QK6qqg
 +sAYaXFriQON2lzYhY8pZ+PrvlaNc+FMhhe+os0O7kG81YMhj3xCt3FV4roYl0MZjQmy5SdWk
 WegwZAalvOeUSgmbRmCXzlyCEUmQXOUd+zCOcpJpcRGnlx3tA1WCMbxzIsufqroXzBoWsYe/R
 mOTjvI1CZANMqdopQZmfYwkCKKjhRstk57F1bvS7NfhIOX7y3oQC6QINhsHH/FTvUPSA08NV5
 Eb214zvIy/7NQflVPvvPN3I4ulwA4Qu8Lw5GFjjSfEy/wVbZNZq7mkI7YBnzRyJdZcUzEWccu
 x9F6QLyes48BuyTUUyWvmayoFJT7BXIF7q63fYdFTFIzsAlq3XpGCwdwl3DC0xjPr8qRpCFIP
 8fUX0whzIw4wC+iZAvRU2OtEAcZy+Bpy77/VnqLyhM/J1nKygjD2FHL2zBjkHYGoXSkNJVHXJ
 tLg4TjajwFJrUyDC96W08C98epfPoKzwSbrHXrQsHTFBwnlcyDc81f8gig1QU4waJmQFlEbJh
 QkeYzmBWTQJhNBRADzhpKLbTNc6T0XR3BnXppF/rUg5xxW+Jmpg47TVqy2QJTmYQik8FEfyDZ
 mQ2HqRgdAxn2EJHmUcM54cYgwgGJGGPijAQtE8aZJn3x07oK+lDnWPrlBb6PDpzjwumYfhul4
 juHOvPMblBK5MUM9DWuvYi240Ysg2P7J1evbvVK8dlUtydmCEfIiT0KjljYsqTsQpuBCnY0mF
 GdAZRMwrL2ESAO9QtCvw/hW9iCw5X8g0w1256KavWYuj1ce1D8Zrx4qKm6Mmvu2XSAZKbpJZ2
 GyCpAI18VHGQQaUQUiFyBcw9AlI5is66RDxsxutE9L7uCDTEaUHi5m8q+V2LX2NHno4pl5c
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200305_040334_271488_237FE7AA 
X-CRM114-Status: GOOD (  14.64  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.135 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
Subject: Re: [OpenWrt-Devel] [PATCH] malta: fix missing watchdog dependency
 in hwmon-sch5627
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
Cc: 'OpenWrt Development List' <openwrt-devel@lists.openwrt.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

SGksCgo+IC0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tCj4gRnJvbTogb3BlbndydC1kZXZlbCBb
bWFpbHRvOm9wZW53cnQtZGV2ZWwtYm91bmNlc0BsaXN0cy5vcGVud3J0Lm9yZ10KPiBPbiBCZWhh
bGYgT2YgWW91c29uZyBaaG91Cj4gU2VudDogRG9ubmVyc3RhZywgNS4gTcOkcnogMjAyMCAxMjo1
Nwo+IFRvOiBQZXRyIMWgdGV0aWFyIDx5bmV6ekB0cnVlLmN6Pgo+IENjOiBPcGVuV3J0IERldmVs
b3BtZW50IExpc3QgPG9wZW53cnQtZGV2ZWxAbGlzdHMub3BlbndydC5vcmc+Cj4gU3ViamVjdDog
UmU6IFtPcGVuV3J0LURldmVsXSBbUEFUQ0hdIG1hbHRhOiBmaXggbWlzc2luZyB3YXRjaGRvZwo+
IGRlcGVuZGVuY3kgaW4gaHdtb24tc2NoNTYyNwo+IAo+IE9uIFRodSwgNSBNYXIgMjAyMCBhdCAx
OTo0NiwgUGV0ciDFoHRldGlhciA8eW5lenpAdHJ1ZS5jej4gd3JvdGU6Cj4gPgo+ID4gRml4ZXMg
Zm9sbG93aW5nIGVycm9yIHVuY292ZXJlZCB3aGlsZSBidWlsZGluZyBtYWx0YS9iZSBvbiA1LjQ6
Cj4gPgo+ID4gIFBhY2thZ2Uga21vZC1od21vbi1zY2g1NjI3IGlzIG1pc3NpbmcgZGVwZW5kZW5j
aWVzIGZvciB0aGUgZm9sbG93aW5nCj4gbGlicmFyaWVzOgo+ID4gIHdhdGNoZG9nLmtvCj4gPgo+
ID4gVGhhdCBkZXBlbmRlbmN5IHdhcyBpbnRyb2R1Y2VkIGluIHVwc3RyZWFtIHZpYSAyZDhjN2Zm
NTJjMjQKPiA+ICgiaHdtb24vc2NoNTZ4eDogRGVwZW5kIG9uIHdhdGNoZG9nIGZvciB3YXRjaGRv
ZyBjb3JlIGZ1bmN0aW9ucyIpIGluCj4gPiB2My41Lgo+IAo+IERvZXMgaXQgbWFrZSB3ZSBhY3R1
YWxseSBwYWNrYWdlIHdhdGNoZG9nLmtvIGFzIGEgbW9kdWxlPyAgTG90cyBvZiB0YXJnZXRzCj4g
YWxyZWFkeSBzZXQgaXQgYXMgYnVpbHRpbiwgYnV0IEkgZG8gbm90IHJlbWVtYmVyIGV2ZXIgaW50
ZXJhY3Rpbmcgd2l0aCBpdCBkaXJlY3RseQo+IG9uIGFyNzF4eCwgcmFtaXBzLgoKV2VsbCwgYXI3
MXh4IG9idmlvdXNseSB3b24ndCBtYXR0ZXIgaW4gbWFzdGVyLCBzbyBJJ2Qgc2F5IGp1c3QgaWdu
b3JlIHRoaXMgY2FzZS4KCkJlc3QKCkFkcmlhbgoKPiAKPiBSZWdhcmRzLAo+ICAgICAgICAgICAg
ICAgICB5b3Vzb25nCj4gCj4gPgo+ID4gQ2M6IFlvdXNvbmcgWmhvdSA8eXN6aG91NHRlY2hAZ21h
aWwuY29tPgo+ID4gU2lnbmVkLW9mZi1ieTogUGV0ciDFoHRldGlhciA8eW5lenpAdHJ1ZS5jej4K
PiA+IC0tLQo+ID4gIHRhcmdldC9saW51eC9tYWx0YS9jb25maWctNC4xOSB8IDEgKwo+ID4gIHRh
cmdldC9saW51eC9tYWx0YS9jb25maWctNS40ICB8IDEgKwo+ID4gIDIgZmlsZXMgY2hhbmdlZCwg
MiBpbnNlcnRpb25zKCspCj4gPgo+ID4gZGlmZiAtLWdpdCBhL3RhcmdldC9saW51eC9tYWx0YS9j
b25maWctNC4xOQo+ID4gYi90YXJnZXQvbGludXgvbWFsdGEvY29uZmlnLTQuMTkgaW5kZXggZjY2
MDM2ZTI3YmI3Li4zYWQ3ZGJlZDc1NTgKPiA+IDEwMDY0NAo+ID4gLS0tIGEvdGFyZ2V0L2xpbnV4
L21hbHRhL2NvbmZpZy00LjE5Cj4gPiArKysgYi90YXJnZXQvbGludXgvbWFsdGEvY29uZmlnLTQu
MTkKPiA+IEBAIC0zMzMsNCArMzMzLDUgQEAgQ09ORklHX1ZUPXkKPiA+ICBDT05GSUdfVlRfQ09O
U09MRT15Cj4gPiAgQ09ORklHX1ZUX0hXX0NPTlNPTEVfQklORElORz15Cj4gPiAgQ09ORklHX1ZY
RlNfRlM9eQo+ID4gK0NPTkZJR19XQVRDSERPR19DT1JFPXkKPiA+ICBDT05GSUdfWFBTPXkKPiA+
IGRpZmYgLS1naXQgYS90YXJnZXQvbGludXgvbWFsdGEvY29uZmlnLTUuNAo+ID4gYi90YXJnZXQv
bGludXgvbWFsdGEvY29uZmlnLTUuNCBpbmRleCA0MWZjOTc3MDQzNWYuLjM3ZDNkYmVmOWFlMAo+
ID4gMTAwNjQ0Cj4gPiAtLS0gYS90YXJnZXQvbGludXgvbWFsdGEvY29uZmlnLTUuNAo+ID4gKysr
IGIvdGFyZ2V0L2xpbnV4L21hbHRhL2NvbmZpZy01LjQKPiA+IEBAIC0zNDEsNCArMzQxLDUgQEAg
Q09ORklHX1ZUPXkKPiA+ICBDT05GSUdfVlRfQ09OU09MRT15Cj4gPiAgQ09ORklHX1ZUX0hXX0NP
TlNPTEVfQklORElORz15Cj4gPiAgQ09ORklHX1ZYRlNfRlM9eQo+ID4gK0NPTkZJR19XQVRDSERP
R19DT1JFPXkKPiA+ICBDT05GSUdfWFBTPXkKPiAKPiBfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwo+IG9wZW53cnQtZGV2ZWwgbWFpbGluZyBsaXN0Cj4gb3Bl
bndydC1kZXZlbEBsaXN0cy5vcGVud3J0Lm9yZwo+IGh0dHBzOi8vbGlzdHMub3BlbndydC5vcmcv
bWFpbG1hbi9saXN0aW5mby9vcGVud3J0LWRldmVsCgoKX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18Kb3BlbndydC1kZXZlbCBtYWlsaW5nIGxpc3QKb3Blbndy
dC1kZXZlbEBsaXN0cy5vcGVud3J0Lm9yZwpodHRwczovL2xpc3RzLm9wZW53cnQub3JnL21haWxt
YW4vbGlzdGluZm8vb3BlbndydC1kZXZlbAo=
