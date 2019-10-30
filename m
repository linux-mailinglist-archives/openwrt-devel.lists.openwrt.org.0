Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 14BDCE9ECA
	for <lists+openwrt-devel@lfdr.de>; Wed, 30 Oct 2019 16:22:20 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=h7T8gnuj/kN2ufa+1NX3MBfH5xISS+Nok5JIOAG7vZQ=; b=LkaMREJwdL20lf
	134q5WXHiXyYrypsPX2Ox/IrZ2wjpcK3+12NvXx3vYPCri2xuq1oKX6/YaIkZXTaUEeaCFYWUEtzd
	cz0D8H8iOolEXYpoA1mgcf8LF3x3p+7o2VxV6BmWTXKsYDWP1Hygii0Y1h8zgWMBsmyFcWKI0NZS+
	MUHCeTq62z04eqf57Ey1y6imvZE7PNc9VFCXor0iZHlAGev/bAQPBvwz+V/IhoT0ZAsxLXYX2+hYe
	6fkJGV1JwC5l5Wdumr2o+V9/trx8d001Va+dBdqr7mS+0+fJmGhLMjtCM6l7tlsxNIJC89E3gimmB
	mGspjC28YgERcv5a9Amw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iPpnd-00038e-Vy; Wed, 30 Oct 2019 15:22:17 +0000
Received: from smtps.newmedia-net.de ([2a05:a1c0:0:de::167]
 helo=webmail.newmedia-net.de)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iPpnR-00037O-V5
 for openwrt-devel@lists.openwrt.org; Wed, 30 Oct 2019 15:22:10 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=dd-wrt.com;
 s=mikd; 
 h=Subject:Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:Message-ID:From:References:To;
 bh=AH7sm34vfZ6MG15aHyQy8ThrOwsCmchZ+xOz792x6bg=; 
 b=EwRV3mOcWwlxhUHf+6KcSybRVId89C6YueHlWu1s9J2LM779CNBMhui2iQsTXZkvdzrDRaE2fnGkShG6/8k6q2AMv8PFsRFbTApLvadvYR6+EKh2kkh8qPNabp4hG3tqOTmo3Fv4o6nDXr7LAfLJdWjOhJRVq8TexVrcRRmt9wk=;
To: Jeff Kletsky <lede@allycomm.com>, openwrt-devel@lists.openwrt.org
References: <20191030112726.13106-1-daniel@dd-wrt.com>
 <20191030112726.13106-2-daniel@dd-wrt.com>
 <933b5585-5290-5372-6702-1b9f2cf31874@allycomm.com>
From: Daniel Danzberger <daniel@dd-wrt.com>
Openpgp: preference=signencrypt
Autocrypt: addr=daniel@dd-wrt.com; prefer-encrypt=mutual; keydata=
 mQENBFEb+wQBCAD7DgPNNCJeLdnVdMCcneGypnjJ8mtCmpjo/r7HO2Ig6im559z5IQwnGdmj
 FM+6Xws5oGBdhqh7V+uGJ0/pSVJ432OFd/2JYlEs9p9aLbth/QIaoMO4DfDS8EestMLuGYlj
 ffojt+lCwI/OVNvlsHPZczxUuLENDeCKPQKyVkSo8tf5qgOJxZmJ8ebSY2DiTD8Sr3TC7ge3
 aOMuE1YVMv8RbOEVvRcTBerCXteANRuJYA8H1Nwg1WOJjPl5SoysQqPamCkiyVFbteNtRZaV
 tBqfJNRUi4JXdZxsNoaWygJr5pAMyJ9FPMQ6meo/97Cj1E46fTH7QWDhYkwGS3sFLb1jABEB
 AAG0JURhbmllbCBEYW56YmVyZ2VyIDxkYW5pZWxAZGQtd3J0LmNvbT6JAT4EEwECACgFAlEc
 oikCGwMFCVexLAAGCwkIBwMCBhUIAgkKCwQWAgMBAh4BAheAAAoJEF2W1+mV7KsoZYwH/1HG
 YtcQuMVXOD1ClaDDoWumBZ089ABCeExcCjuNAqtySAD0Z1i3Dr153CDL5IF8WsLDL+hkhmRJ
 knQg31kwkFglm62HcYuVZiAEjoTgNZRfBezTQevWV6Dys8YdfJGdLifqtMQM5dBLuWtyRWK/
 gkcv0rf2iI9PLveCqb93K9qDLxzgV96kwTUabc6n4FIF324RUPlzCuGoDEUNkh/sVo8jkXl7
 v8vfxwKb1EEMlWLk7bRGqUg7mdHf9zM4Fnb9oMQLJUrFWtME2FlZLwKvMfW8/bPqHI3thIYV
 qgYvagC/1HKmlvHfo8rraKXsQKzNadlv4Vyh6iZYkdQXUTuQtDO5AQ0EURv7BAEIAL1UNRYJ
 q1hv3ggyZv9PSkaWy0t+xMoSwAd2hWdA3iuILrQXjtzJ3nTtePE9TrmLpjwmN8H/ppcNpf1W
 WZ1Zxer9e4cUmm1LjbbgNIArZqzplVh+7QwDJk0ER282k3p5s7IYLkjymwmgeuiSJgaRAmFm
 AJKjiaNZoGdZvaC8TGpgGCRidwDR/cUR1hjpA2vyidNSP5ynILqohEpIe2lvhClODSvEgcMN
 o4xOtmI+Yq2Qg2e7FUaP8pptEysDdDoUnSPxq9v0aQHe3FS90KzXGAaoCuEnnRaotzZcVI31
 vffWHoZ30yGETeTF+W52hIKe7D+MbFfyiRjNtOw6HKli7TEAEQEAAYkBJQQYAQIADwUCURv7
 BAIbDAUJV7EsAAAKCRBdltfpleyrKDikB/0SWPBPhPBpogDLF4bIwORt6Uu8UQus5jYudtMx
 j67v+R+f42sfBj+iKtz2GHlboul8tJXzcO6zVJf2gqQisCNAoS7wZ/k3axPtbgClQmsLtU7B
 KgVRYaWVlLol0hg/Sn1lju/yHhgmbdttfBmCE63wDWr1ITTFepp9aVwaoIhIRBmCBpf3Vk5I
 e6l+1iqDXNXVQVf5qPdVE0Im7IZb9kA7Wk7N6Fa+zYpK+Qz1wFOXYjmK9SPhjdf/5/V2EQGi
 JgaVyfwaMRPUDRFW2wBlScmP+82LqA6TvKKyi3O3zgnFqTGvY2+bvkr9dTfRBlx1NlX0am9t
 YMmhspz7064avRsg
Message-ID: <81452f9e-f71f-a6e6-14c2-0755a29f6224@dd-wrt.com>
Date: Wed, 30 Oct 2019 16:21:59 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <933b5585-5290-5372-6702-1b9f2cf31874@allycomm.com>
Content-Language: en-US
X-SA-Exim-Connect-IP: 2a02:908:2614:35c:819:5a9a:5145:d03a
X-SA-Exim-Mail-From: daniel@dd-wrt.com
X-Spam-Checker-Version: SpamAssassin 3.1.9 (2007-02-13) on
 webmail.newmedia-net.de
X-Spam-Level: 
X-Spam-Status: No, score=-0.9 required=4.0 tests=BAYES_00,NO_RELAYS,
 RATWARE_GECKO_BUILD autolearn=no version=3.1.9, No
X-SA-Exim-Version: 4.2.1 (built Thu, 26 May 2011 15:22:33 +0200)
X-SA-Exim-Scanned: Yes (on webmail.newmedia-net.de)
X-NMN-MailScanner-Information: Please contact the ISP for more information
X-NMN-MailScanner-ID: 1iPpmo-0001r3-Np
X-NMN-MailScanner: Found to be clean
X-NMN-MailScanner-SpamScore: s
X-NMN-MailScanner-From: daniel@dd-wrt.com
X-Received: from [2a02:908:2614:35c:819:5a9a:5145:d03a]
 by webmail.newmedia-net.de with esmtpsa (TLSv1:AES128-SHA:128)
 (Exim 4.72) (envelope-from <daniel@dd-wrt.com>)
 id 1iPpmo-0001r3-Np; Wed, 30 Oct 2019 16:21:27 +0100
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191030_082208_167889_A083A8E6 
X-CRM114-Status: GOOD (  23.52  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: Re: [OpenWrt-Devel] [PATCH 1/3] ipq40xx: Add gigadevice nandspi
 flash driver
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

PiBJcyB0aGVyZSBhIHJlYXNvbiB3aHkgdGhlIHVwc3RyZWFtIFNQSS1OQU5EIGZyYW1ld29yayBp
c24ndCBiZWluZyB1c2VkPwoKTm8sIEkgZGlkbid0IGtub3cgYWJvdXQgaXQuIFRoZSBwYXRjaGVz
IEkgdXNlZCBhcmUgY29waWVkIGZyb20gYSBjb21wZXggb3BlbndydAp0cmVlIGFuZCBoYXZlIG9u
bHkgYmVlbiBtb2RpZmllZCBieSBtZSB0byBydW4gb24ga2VybmVsIDQuMTkKCkkgYW0gZ29pbmcg
dG8gY2hlY2tvdXQgdGhlIG5ldyBBUEkgYW5kIHRyeSB0byBtYWtlIHRoZSBkZXZpY2Ugd29yayB3
aXRoIGl0LgoKT24gMTAvMzAvMTkgNDoxNSBQTSwgSmVmZiBLbGV0c2t5IHdyb3RlOgo+IE9uIDEw
LzMwLzE5IDQ6MjcgQU0sIERhbmllbCBEYW56YmVyZ2VyIHdyb3RlOgo+IAo+PiBUaGlzIHBhdGNo
IGFkZHMgc3VwcG9ydCBmb3IgR2lnYWRldmljZSBTUEkgTkFORCBkZXZpY2UgdG8gdGhlIG10Mjlm
IHN0YWdnaW5nCj4+IGRyaXZlci4KPj4KPj4gU2lnbmVkLW9mZi1ieTogRGFuaWVsIERhbnpiZXJn
ZXIgPGRhbmllbEBkZC13cnQuY29tPgo+PiAtLS0KPj4gwqAgLi4ucG9ydC1naWdhZGV2aWNlLW5h
bmRzcGktZmxhc2gtZGV2aWNlLnBhdGNoIHwgMTc3OCArKysrKysrKysrKysrKysrKwo+PiDCoCAx
IGZpbGUgY2hhbmdlZCwgMTc3OCBpbnNlcnRpb25zKCspCj4+IMKgIGNyZWF0ZSBtb2RlIDEwMDY0
NAo+PiB0YXJnZXQvbGludXgvaXBxNDB4eC9wYXRjaGVzLTQuMTkvNDAwLW10ZC1uYW5kLXN1cHBv
cnQtZ2lnYWRldmljZS1uYW5kc3BpLWZsYXNoLWRldmljZS5wYXRjaAo+Pgo+Pgo+Pgo+PiBbLi4u
XQo+IAo+IAo+IElzIHRoZXJlIGEgcmVhc29uIHdoeSB0aGUgdXBzdHJlYW0gU1BJLU5BTkQgZnJh
bWV3b3JrIGlzbid0IGJlaW5nIHVzZWQ/Cj4gCj4gVGhpcyBoYXMgYmVlbiBkZW1hbmRlZCBvZiB0
aGUgYXRoNzkgdGFyZ2V0IChzZWUsIGZvciBleGFtcGxlCj4gaHR0cHM6Ly9naXRodWIuY29tL29w
ZW53cnQvb3BlbndydC9wdWxsLzE0MjgjaXNzdWVjb21tZW50LTQ0MTU5NDQwMSkKPiAKPiBhbmQg
aXMgYXZhaWxhYmxlIHRvIHRoZSBpcHE0MHh4IHRhcmdldCBhbmQgYXBwZWFycyB0byBhbHJlYWR5
IGJlIGluIHVzZSBieToKPiAKPiDCoCBxY29tLWlwcTQwMTgtcnQtYWM1OHUuZHRzCj4gwqAgcWNv
bS1pcHE0MDE4LWVhNjM1MHYzLmR0cwo+IMKgIHFjb20taXBxNDAxOC1hcDEyMGMtYWMuZHRzCj4g
wqAgcWNvbS1pcHE0MDE4LWphbGFwZW5vLmR0cwo+IAo+IAo+IAo+IEZ1cnRoZXIsIHRoZSBtdDI5
ZiBkcml2ZXIgaGFzIGJlZW4gcmVtb3ZlZCBmcm9tIHVwc3RyZWFtIExpbnV4Cj4gCj4gY29tbWl0
IDY0N2FkNDljYTY3Mgo+IEF1dGhvcjogQm9yaXMgQnJlemlsbG9uIDxib3Jpcy5icmV6aWxsb25A
Ym9vdGxpbi5jb20+Cj4gRGF0ZTrCoMKgIE1vbiBPY3QgMjIgMjI6MTA6NTkgMjAxOCArMDIwMAo+
IAo+IMKgwqDCoCBzdGFnaW5nOiBSZW1vdmUgdGhlIG10MjlmX3NwaW5hbmQgZHJpdmVyCj4gCj4g
wqDCoMKgIEEgbmV3IFNQSSBOQU5EIHN1YnN5c3RlbSBoYXMgYmVlbiBhZGRlZCBpbiBkcml2ZXJz
L210ZC9uYW5kL3NwaS8gYW5kCj4gwqDCoMKgIE1pY3JvbidzIE1UMjlGIGRldmljZXMgYXJlIG5v
dyBzdXBwb3J0ZWQgaW4KPiDCoMKgwqAgZHJpdmVycy9tdGQvbmFuZC9zcGkvbWljcm9uLmMuCj4g
Cj4gwqDCoMKgIFJlbW92ZSB0aGUgb2xkIGRyaXZlci4KPiAKPiAKPiAKPiAKPiBUaGUgc2V0IG9m
IFNQSS1OQU5EIGNoaXBzIHN1cHBvcnRlZCBieSBMaW51eCA1LjMgaGFzIGFscmVhZHkgYmVlbgo+
IGJhY2twb3J0ZWQgdG8gT3BlbldydCBgbWFzdGVyYCwgaW5jbHVkaW5nOyBHaWdhRGV2aWNlLCBN
YWNyb25peCwKPiBNaWNyb24sIFBhcmFnb24sIFRvc2hpYmEsIGFuZCBXaW5ib25kLgo+IAo+IAo+
IGNvbW1pdCBiOWQ1OGY3ZTA2Cj4gQXV0aG9yOiBKZWZmIEtsZXRza3kgPGdpdC1jb21taXRzQGFs
bHljb21tLmNvbT4KPiBEYXRlOsKgwqAgVGh1IE9jdCAyNCAwOTo1NDoxMSAyMDE5IC0wNzAwCj4g
Cj4gwqDCoMKgIGtlcm5lbDogbXRkOiBzcGluYW5kOiBCYWNrcG9ydCBjaGlwIGRlZmluaXRpb25z
Cj4gCj4gwqDCoMKgIGdlbmVyaWM6IEFkZC9yZW5hbWUgcGF0Y2hlcyBmb3IgdXBzdHJlYW0gY29u
c2lzdGVuY3kKPiAKPiDCoMKgwqAgaXBxNDB4eDogZ2VuZXJpYy1sZXZlbCBwYXRjaCByZXBsYWNl
cyBzYW1lLXNvdXJjZSBwYXRjaGVzLTQuMTkvCj4gMDgyLXY0LjIwLW10ZC1zcGluYW5kLXdpbmJv
bmQtQWRkLXN1cHBvcnQtZm9yLVcyNU4wMUdWLnBhdGNoCj4gCj4gwqDCoMKgIFRoZSBTUEktTkFO
RCBmcmFtZXdvcmsgZnJvbSBMaW51eCB1c2VzIGNvbW1vbiBkcml2ZXIgY29kZSB0aGF0IGlzIHRo
ZW4KPiDCoMKgwqAgInR1bmVkIiBieSBhIHRpbnkgc3RydWN0IG9mIGNoaXAtc3BlY2lmaWMgZGF0
YSB0aGF0IGRlc2NyaWJlcwo+IMKgwqDCoCBhdmFpbGFibGUgY29tbWFuZHMsIHRpbWluZywgYW5k
IGxheW91dCAoZGF0YSBhbmQgT09CIGRhdGEpLiBTZXZlcmFsCj4gwqDCoMKgIG1hbnVmYWN0dXJl
cnMgYW5kIGNoaXBzIGhhdmUgYmVlbiBhZGRlZCBzaW5jZSA0LjE5LCBzZXZlcmFsIG9mIHdoaWNo
Cj4gwqDCoMKgIGFyZSB1c2VkIGluIGRldmljZXMgYWxyZWFkeSBzdXBwb3J0ZWQgYnkgT3Blbldy
dCAodHlwaWNhbGx5IHdpdGggbm8gb3IKPiDCoMKgwqAgImxlZ2FjeSIgYWNjZXNzIHRvIHRoZWly
IE5BTkQgbWVtb3J5KS4gVGhpcyBjb21taXQgY2F0Y2hlcyB1cCB0aGUKPiDCoMKgwqAgc3VwcG9y
dGVkLWNoaXAgZGVmaW5pdGlvbnMgdGhyb3VnaCBMaW51eCA1LjItcmM2IGFuZCBsaW51eC9uZXh0
Lgo+IAo+IMKgwqDCoCBUaGUgZHJpdmVyIGlzIG9ubHkgY29tcGlsZWQgZm9yIHBsYXRmb3JtcyB3
aXRoIENPTkZJR19NVERfU1BJX05BTkQ9eS4KPiDCoMKgwqAgVGhpcyBwcmVzZW50bHkgaW5jbHVk
ZXMgaXBxNDB4eCBhbmQgcGlzdGFjaGlvLCB3aXRoIHRoZSBhZGRpdGlvbiBvZgo+IMKgwqDCoCBh
dGg3OS1uYW5kIGluIHRoZXNlIGNvbW1pdHMgKGFuZCBub3QgYXRoNzktZ2VuZXJpYyBvciBhdGg3
OS10aW55KS4KPiAKPiDCoMKgwqAgVXBzdHJlYW0gcGF0Y2hlcyByZWZyZXNoZWQgYWdhaW5zdCA0
LjE5Ljc1Cj4gCj4gwqDCoMKgIEJ1aWxkLXRlc3RlZC1vbjogaXBxNDB4eAo+IMKgwqDCoCBSdW4t
dGVzdGVkLW9uOiBhdGg3OS1uYW5kCj4gCj4gCj4gCj4gCgotLSAKUmVnYXJkcwoKRGFuaWVsIERh
bnpiZXJnZXIKZW1iZUREIEdtYkgsIEFsdGVyIFBvc3RwbGF0eiAyLCBDSC02MzcwIFN0YW5zCgpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpvcGVud3J0LWRl
dmVsIG1haWxpbmcgbGlzdApvcGVud3J0LWRldmVsQGxpc3RzLm9wZW53cnQub3JnCmh0dHBzOi8v
bGlzdHMub3BlbndydC5vcmcvbWFpbG1hbi9saXN0aW5mby9vcGVud3J0LWRldmVsCg==
