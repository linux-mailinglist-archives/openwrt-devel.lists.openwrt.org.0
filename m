Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 97EC7E7705
	for <lists+openwrt-devel@lfdr.de>; Mon, 28 Oct 2019 17:50:28 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:Message-ID:
	From:References:To:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=mZ6rsRrSOLWylC4jpTUkDf4RNPFgH4UxxJ83tNMGRhY=; b=uA22bqGjidj9feAraSOYGsgU2
	WitrXq18yIrGr/GWgrsKArPJiXjioaypjfMj4/oSftBKYPIucbLknpBSnGnNmR/4PO89JvHUUwWgT
	JvRgENYwRJapy0YdYhzbYETfPbsuH/Xl+B6WlBMKNOiztwjvziQ/0ZnHhRzXt8befQOIi/NCyykAD
	P3bOlUwzjUjpBj15NiSx9a5oQVCRu3E0wZ7oJieikQjKZ8Ypn0T1IgjbY0LIkEGz6ltze9rm+atZt
	KN93FHbzbsTGqRaLZnt0FGbzSavk0k4iLl780XZ9kz/J0jdUBGIjzkQfXob9Jv3q/qluYjrvamZVn
	ViWpLXx3w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iP8Dq-0005xO-Qj; Mon, 28 Oct 2019 16:50:26 +0000
Received: from mail2.candelatech.com ([208.74.158.173]
 helo=mail3.candelatech.com)
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iP8De-0005wj-QY
 for openwrt-devel@lists.openwrt.org; Mon, 28 Oct 2019 16:50:16 +0000
Received: from [192.168.100.195] (50-251-239-81-static.hfc.comcastbusiness.net
 [50.251.239.81])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail3.candelatech.com (Postfix) with ESMTPSA id 915B4137562;
 Mon, 28 Oct 2019 09:50:13 -0700 (PDT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mail3.candelatech.com 915B4137562
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=candelatech.com;
 s=default; t=1572281413;
 bh=cqjcxYxD+iiY8qGXwa6612iB4tJu6KFYILwtZaKLc+E=;
 h=Subject:To:References:From:Date:In-Reply-To:From;
 b=EBEUDFClprJzUXrJGa9aNTH8R/QvBv7qH/CuNBRVvkjx7Fu/crv9f2I95N0wqabAR
 yd0BwjnIUi5aypG8BtabdMoJT44JT1z4fCSEF/vkVBRwPpv9ldlPaxQj56vPBu3QlC
 zYec2hc4LA5jZX8X5Wxz1NzKaI/JE3656XdC7YNw=
To: John Crispin <john@phrozen.org>, openwrt-devel@lists.openwrt.org
References: <20181217164802.20108-1-greearb@candelatech.com>
 <73cd647e-2ac5-f397-2e9c-2fd0686f40ab@phrozen.org>
From: Ben Greear <greearb@candelatech.com>
Organization: Candela Technologies
Message-ID: <1c016ddc-8c9b-eaae-d514-6258c66ecaaf@candelatech.com>
Date: Mon, 28 Oct 2019 09:50:13 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <73cd647e-2ac5-f397-2e9c-2fd0686f40ab@phrozen.org>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191028_095014_952918_E11D37AB 
X-CRM114-Status: GOOD (  17.05  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
Subject: Re: [OpenWrt-Devel] [PATCH] hotplug: Allow renaming wireless phy
 devices.
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

T24gMTAvMjcvMTkgNjozNSBBTSwgSm9obiBDcmlzcGluIHdyb3RlOgo+IE9uIDE3LzEyLzIwMTgg
MTc6NDgsIGdyZWVhcmJAY2FuZGVsYXRlY2guY29tIHdyb3RlOgo+PiBGcm9tOiBCZW4gR3JlZWFy
IDxncmVlYXJiQGNhbmRlbGF0ZWNoLmNvbT4KPj4KPj4gdWNpIHNldCB3aXJlbGVzcy5Ad2lmaS1k
ZXZpY2VbMF0ucGh5bmFtZT13aXBoeTAKPj4KPj4gVGhlbiByZWJvb3QgYW5kL29yIHJlLXBsdWcg
dGhhdCBkZXZpY2UsIGFuZCB0aGlzIHdpbGwKPj4gbmFtZSB0aGUgcGh5IHdpcGh5MCBpbnN0ZWFk
IG9mIHBoeTAsIHBoeTEsIGV0Yy4KPj4KPj4gVGhpcyBjYW4gaGVscCBrZWVwIHBoeSBuYW1lcyBj
b25zaXN0ZW50IHRocm91Z2ggZHJpdmVyIHJlbG9hZHMKPj4gd2hpY2ggbWF5IG1ha2UgdGhlIHN5
c3RlbSBlYXNpZXIgdG8gY29uZmlndXJlIHByb3Blcmx5IG9yIHRvCj4+IG1ha2UgZGlmZmVyZW50
IHN5c3RlbXMgaGF2ZSB0aGUgc2FtZSBuYW1pbmcgKHdoZXJlIHdpcGh5MCBpcyBhbHdheXMKPj4g
dGhlIDIuNEdoeiByYWRpbywgZm9yIGluc3RhbmNlKS4KPj4KPj4gU2lnbmVkLW9mZi1ieTogQmVu
IEdyZWVhciA8Z3JlZWFyYkBjYW5kZWxhdGVjaC5jb20+Cj4+IC0tLQo+PiDCoCAuLi4va2VybmVs
L21hYzgwMjExL2ZpbGVzL21hYzgwMjExLmhvdHBsdWfCoMKgwqAgfCAzMiArKysrKysrKysrKysr
KysrKysrCj4+IMKgIDEgZmlsZSBjaGFuZ2VkLCAzMiBpbnNlcnRpb25zKCspCj4+Cj4+IGRpZmYg
LS1naXQgYS9wYWNrYWdlL2tlcm5lbC9tYWM4MDIxMS9maWxlcy9tYWM4MDIxMS5ob3RwbHVnIGIv
cGFja2FnZS9rZXJuZWwvbWFjODAyMTEvZmlsZXMvbWFjODAyMTEuaG90cGx1Zwo+PiBpbmRleCBi
ODY1NTUyNjYxLi5hMzk0ZTMxOTVlIDEwMDY0NAo+PiAtLS0gYS9wYWNrYWdlL2tlcm5lbC9tYWM4
MDIxMS9maWxlcy9tYWM4MDIxMS5ob3RwbHVnCj4+ICsrKyBiL3BhY2thZ2Uva2VybmVsL21hYzgw
MjExL2ZpbGVzL21hYzgwMjExLmhvdHBsdWcKPj4gQEAgLTMsMyArMywzNSBAQAo+PiDCoCBbICIk
e0FDVElPTn0iID0gImFkZCIgXSAmJiB7Cj4+IMKgwqDCoMKgwqAgL3NiaW4vd2lmaSBjb25maWcK
Pj4gwqAgfQo+PiArCj4+ICsKPj4gK09QQVRIPSR7REVWUEFUSCMjL2RldmljZXMvcGxhdGZvcm0v
fQo+PiArT1BBVEg9JHtPUEFUSCUlL2llZWUqfQo+PiArCj4+ICsjIEZvciBVU0IsIE9QQVRIIGxv
b2tzIGxpa2UgdGhpcyBhdCB0aGlzIHBvaW50IGluIHRoaXMgc2NyaXB0Ogo+PiArIyBzb2Mvc29j
OnVzYjMwQDAvMTEwMDAwMDAuZHdjMy94aGNpLWhjZC4wLmF1dG8vdXNiMS8xLTEvMS0xOjEuMAo+
PiArIyBCdXQsIHRoZSB1Y2kgcGF0aCBoYXMgYSBwbGF0Zm9ybS8gcHJlZml4IG9uIHRoYXQ6Cj4+
ICsjIHBsYXRmb3JtL3NvYy9zb2M6dXNiMzBAMC8xMTAwMDAwMC5kd2MzL3hoY2ktaGNkLjAuYXV0
by91c2IxLzEtMS8xLTE6MS4wCj4+ICtPUEFUSF9VU0I9InBsYXRmb3JtLyRPUEFUSCI7Cj4+ICsK
Pj4gKyMgMTAgcmFkaW9zIGlzIGVub3VnaCBmb3IgYW55b25lIQo+PiArI2VjaG8gImZpeC13aWZp
LW1hYywgT1BBVEg6ICRPUEFUSCIgPj4gL3RtcC9mb28udHh0Cj4gSGkgQmVuLAo+IGNhbiB5b3Ug
cGxlYXNlIGRyb3AgYWxsIHRoZSBkZWJ1ZyBjb2RlIGZyb20gdGhlIHBhdGNoIGFuZCByZXNlbmQK
PiAgwqDCoMKgwqBKb2huCgpJdCB3aWxsIGJlIGEgd2hpbGUgYmVmb3JlIEkgZ2V0IGEgY2hhbmNl
IHRvIHJlYmFzZSBteSB0cmVlCmFuZCBkbyBhbnkgdXNlZnVsIHRlc3RpbmcsIGFuZCBJIHdvdWxk
IHJhdGhlciBub3Qgc2VuZCBpbiBhIHBhdGNoCnRoYXQgaGFzIG5vdCBoYWQgYW55IHRlc3Rpbmcu
CgpTbywgSSBjYW4gcmVzZW5kIGxhdGVyLCBvciBtYXliZSBzb21lb25lIGVsc2Ugd2lsbCBoYXZl
IHRpbWUgdG8gbWFrZSB0aGUKdHdlYWtzIGFuZCB0ZXN0IGFnYWluc3QgY3VycmVudCB1cHN0ZXJh
bSBjb2RlLgoKVGhhbmtzLApCZW4KCgo+IAo+PiArZm9yIGkgaW4gYHNlcSAwIDlgOwo+PiArwqAg
ZG8KPj4gK8KgIEJVUz1gdWNpIGdldCB3aXJlbGVzcy5Ad2lmaS1kZXZpY2VbJGldLnBhdGhgCj4+
ICvCoCAjZWNobyAiZml4LXdpZmktbWFjLCBCVVNbJGldOiAkQlVTIiA+PiAvdG1wL2Zvby50eHQK
Pj4gK8KgIGlmIFsgIiRCVVMgIiA9PSAiJE9QQVRIICIgXSB8fCBbICIkQlVTICIgPT0gIiRPUEFU
SF9VU0IgIiBdCj4+ICvCoMKgwqDCoMKgIHRoZW4KPj4gK8KgwqDCoMKgwqAgUEhZTkFNRT0ke0RF
VlBBVEgjIyppZWVlODAyMTEvfQo+PiArwqDCoMKgwqDCoCBOUEhZTkFNRT1gdWNpIGdldCB3aXJl
bGVzcy5Ad2lmaS1kZXZpY2VbJGldLnBoeW5hbWVgCj4+ICvCoMKgwqDCoMKgICNlY2hvICJmaXgt
d2lmaS1tYWMsIFBIWU5BTUVbJGldOiAkUEhZTkFNRcKgIE5QSFlOQU1FOiAkTlBIWU5BTUUiID4+
IC90bXAvZm9vLnR4dDsKPj4gK8KgwqDCoMKgwqAgaWYgWyAiJE5QSFlOQU1FICIgIT0gIiAiIF0K
Pj4gK8KgwqDCoMKgwqDCoMKgwqDCoCB0aGVuCj4+ICvCoMKgwqDCoMKgwqDCoMKgwqAgaWYgWyAi
JFBIWU5BTUUgIiAhPSAiJE5QSFlOQU1FICIgXQo+PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqAgdGhlbgo+PiArwqDCoMKgwqDCoMKgwqDCoMKgICNlY2hvICJmaXgtd2lmaS1tYWMsIHJlbmFt
aW5nLi4uIiA+PiAvdG1wL2Zvby50eHQ7Cj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBp
dyAkUEhZTkFNRSBzZXQgbmFtZSAkTlBIWU5BTUUKPj4gK8KgwqDCoMKgwqDCoMKgwqDCoCBmaQo+
PiArwqDCoMKgwqDCoCBmaQo+PiArwqAgZmkKPj4gK2RvbmUKPj4KPiAKCgotLSAKQmVuIEdyZWVh
ciA8Z3JlZWFyYkBjYW5kZWxhdGVjaC5jb20+CkNhbmRlbGEgVGVjaG5vbG9naWVzIEluYyAgaHR0
cDovL3d3dy5jYW5kZWxhdGVjaC5jb20KCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpvcGVud3J0LWRldmVsIG1haWxpbmcgbGlzdApvcGVud3J0LWRldmVs
QGxpc3RzLm9wZW53cnQub3JnCmh0dHBzOi8vbGlzdHMub3BlbndydC5vcmcvbWFpbG1hbi9saXN0
aW5mby9vcGVud3J0LWRldmVsCg==
