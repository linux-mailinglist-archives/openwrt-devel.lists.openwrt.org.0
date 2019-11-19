Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5252D102222
	for <lists+openwrt-devel@lfdr.de>; Tue, 19 Nov 2019 11:34:39 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:
	Message-ID:References:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8fCgdjF3O2fsJd6UIN7XwurM1JdMDSxXXPZ/8v6nFdw=; b=fmE44ZHkIz40AK
	9d393nVm5mtfdi4ozN9KWhQqK/5HZxxSw8ceTFzjwr9B5JPIrWnEiip6sBJGH3kJQAvzRA4vYvxWK
	xpcNBuSch+KNjHqfJp+bGL6ob1J/oDyRNMuoJSc2KcHn77mUoShUXIFEB8AaPbuNANnhc8TbV2/S8
	CnHo3FdymJDyDChzpoxsRGkEiAa/Di/cS8WuXTVjcIP2QtwgUjT7WlsA9rxR+eFPa8nY/mm7kNyi1
	UqEms6UHPUeKaTR/qtfLNKwwlTJs/ndrCeByYP6IFXegUXXpHRBsG19XRQ0GFSVUDwSv9TI/hj927
	Z4/Bbq9fncZ1Eibrnr2A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iX0q1-0008JZ-F5; Tue, 19 Nov 2019 10:34:25 +0000
Received: from mail.neratec.com ([46.140.151.2])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iX0ps-0008Im-7e
 for openwrt-devel@lists.openwrt.org; Tue, 19 Nov 2019 10:34:21 +0000
Received: from localhost (localhost.localdomain [127.0.0.1])
 by mail.neratec.com (Postfix) with ESMTP id C11D2CE0A32;
 Tue, 19 Nov 2019 11:34:08 +0100 (CET)
Received: from mail.neratec.com ([127.0.0.1])
 by localhost (mail.neratec.com [127.0.0.1]) (amavisd-new, port 10032)
 with ESMTP id WIxI0Sm01SAW; Tue, 19 Nov 2019 11:34:08 +0100 (CET)
Received: from localhost (localhost.localdomain [127.0.0.1])
 by mail.neratec.com (Postfix) with ESMTP id 9D3ABCE0A33;
 Tue, 19 Nov 2019 11:34:08 +0100 (CET)
DKIM-Filter: OpenDKIM Filter v2.10.3 mail.neratec.com 9D3ABCE0A33
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=neratec.com;
 s=9F5C293A-195B-11E9-BBA5-B4F3B9D999CA; t=1574159648;
 bh=QaGLsTwthW+1/ysWeu76BbQAwf2cOnalN87SlWEMsSc=;
 h=From:To:Message-ID:Date:MIME-Version;
 b=HyN1Xzv1n/A12JqL2sFc6aIbNxy2eAON3mVrv4hpOPTaePYBM3b8umwr2bSjj1VlY
 PgXDcXOZE0y1zltdWKh9Q9QU74pr0J1RiUbGyX78HcBJFExWOCnNo3axW/IZ1wQ9cd
 Kb7awH9lH+36eirKOjprlEcDqu6TazVkTIdHVHU9i3fgrkE6DwIdCNwQ5zBwdh8Z+j
 vvM3jmSW9kLx4ucasClfTLzsfg6Uz2X+u27DUkdNyL4YS1hLcdL+Jr9VybXOQjwshE
 cAUKQErIkSmSN7nj8MRxBpLEO0MVJ6R8yAAYkpRZaRYrSeG0AlSE+oqYal4VfesNNx
 T0oWF02RlL6Bg==
X-Virus-Scanned: amavisd-new at neratec.com
Received: from mail.neratec.com ([127.0.0.1])
 by localhost (mail.neratec.com [127.0.0.1]) (amavisd-new, port 10026)
 with ESMTP id AkbH2g1i2Nus; Tue, 19 Nov 2019 11:34:08 +0100 (CET)
Received: from [172.29.80.10] (dynvpn-010.vpn.neratec.com [172.29.80.10])
 by mail.neratec.com (Postfix) with ESMTPSA id 6CC74CE0A32;
 Tue, 19 Nov 2019 11:34:08 +0100 (CET)
From: Zefir Kurtisi <zefir.kurtisi@neratec.com>
To: Piotr Dymacz <pepe2k@gmail.com>, openwrt-devel@lists.openwrt.org
References: <20191107115408.13013-1-zefir.kurtisi@neratec.com>
 <745e9302-3688-7f09-1012-14cb5b22ed08@gmail.com>
 <81642625-c521-fe4a-1237-fda66e13d0f2@neratec.com>
Message-ID: <9f792a39-d563-6ba7-c935-35ddef4b71d6@neratec.com>
Date: Tue, 19 Nov 2019 11:34:08 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <81642625-c521-fe4a-1237-fda66e13d0f2@neratec.com>
Content-Language: en-CA
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191119_023416_749136_E57CA6CE 
X-CRM114-Status: GOOD (  12.05  )
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
Subject: Re: [OpenWrt-Devel] [PATCH] uqmi: add timeout parameter
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
Cc: bjorn@mork.no, malaakso@elisanet.fi
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

T24gMTEvMTcvMTkgMTE6MjMgQU0sIFplZmlyIEt1cnRpc2kgd3JvdGU6Cj4gT24gMTEvMTYvMTkg
Mzo1OSBQTSwgUGlvdHIgRHltYWN6IHdyb3RlOgo+PiBIaSBaZWZpciwKPj4KPj4gT24gMDcuMTEu
MjAxOSAxMjo1NCwgWmVmaXIgS3VydGlzaSB3cm90ZToKPj4+IFdvcmtpbmcgd2l0aCBRdWVjdGVs
IEVNMTIgTFRFLW1vZHVsZSwgd2Ugb2JzZXJ2ZQo+Pj4gcmVndWxhciBzdGFsbHMgb2YgdGhlIFFN
SSBpbnRlcmZhY2Ugd2hpY2ggY2F1c2UKPj4+IGEgcmVxdWVzdCBpc3N1ZWQgYnkgdXFtaSB0byBo
YW5nIGZvcmV2ZXIuCj4+Pgo+Pj4gTW9zdCByZXByb2R1Y2libHkgdGhpcyBoYXBwZW5zIGFmdGVy
IHRoZSBkZXZpY2UKPj4+IGhhcyBiZWVuIHBvd2VyLWN5Y2xlZCBhbmQgbGVmdCB1bnRvdWNoZWQg
Zm9yIGEKPj4+IHdoaWxlICh+IDYwcyspLiBNb3N0IG9mIHRoZSB0aW1lIHRoZSB2ZXJ5IGZpcnN0
Cj4+PiBRTUkgcmVxdWVzdCBmYWlscywgc2luY2UgaXQgaXMgbm90IHJlc3BvbmRlZCBieQo+Pj4g
dGhlIG1vZHVsZS4gVGhpcyBpcyB0aGUgc3RyYWNlIGZyb20gc3VjaCBhIHJ1bgo+Pj4gKGZyb20g
LS1nZXQtcGluLXN0YXR1cyk6Cj4+Pgo+Pj4gwqAgb3BlbigiL2Rldi9jZGMtd2RtMCIsIE9fUkRX
UnxPX0VYQ0x8T19OT0NUVFl8T19OT05CTE9DS3xPX0xBUkdFRklMRSkgPSA2Cj4+PiDCoCBmY250
bDY0KDYsIEZfR0VURkwpwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCA9
IDB4MTA4MDIgKGZsYWdzCj4+PiBPX1JEV1J8T19OT05CTE9DS3xPX0xBUkdFRklMRSkKPj4+IMKg
IGZjbnRsNjQoNiwgRl9TRVRGTCwgT19SRFdSfE9fTk9OQkxPQ0t8T19MQVJHRUZJTEUpID0gMAo+
Pj4gwqAgZXBvbGxfY3RsKDMsIEVQT0xMX0NUTF9BREQsIDYsIHtFUE9MTElOfEVQT0xMUkRIVVB8
RVBPTExFVCwge3UzMj0yNjg1NjcwNzYsCj4+PiB1NjQ9MTE1MzQ4NjgwODIwMjM0NjQ5Nn19KSA9
IDAKPj4+IMKgIHdyaXRlKDYsICJcMVwxN1wwXDBcMFwwXDBcMVwiXDBcNFwwXDFcMVwwXDIiLCAx
NikgPSAxNgo+Pj4gwqAgY2xvY2tfZ2V0dGltZShDTE9DS19NT05PVE9OSUMsIHt0dl9zZWM9OTUs
IHR2X25zZWM9NTgzNDQ0Nzg5fSkgPSAwCj4+PiDCoCBjbG9ja19nZXR0aW1lKENMT0NLX01PTk9U
T05JQywge3R2X3NlYz05NSwgdHZfbnNlYz01ODM3NzAyNjR9KSA9IDAKPj4+IMKgIGVwb2xsX3B3
YWl0KDMsCj4+PiDCoCBbIGhhbmcgZm9yZXZlciBdCj4+Pgo+Pj4gQWZ0ZXIga2lsbGluZyB0aGUg
YmxvY2tlZCB1cW1pIHByb2Nlc3MsIHRoZSBuZXh0Cj4+PiByZXF1ZXN0IHdvcmtzIGFzIGV4cGVj
dGVkLgo+Pj4KPj4+IFdlIGRvbid0IGtub3cgd2hldGhlciB0aGlzIGlzIGEgZGV2aWNlIEZXIGlz
c3VlCj4+PiAod2UgdXNlIHRoZSBsYXRlc3QgRU0xMkdQQVIwMUExNU00Rykgb3Igd2hldGhlcgo+
Pj4gdGhlIGRldmljZSBlbnRlcnMgc29tZSB1bmRvY3VtZW50ZWQgcG93ZXItc2F2ZQo+Pj4gbW9k
ZSBhZnRlciBpZGxpbmcgZm9yIHNvbWUgdGltZS4KPj4KPj4gQ291bGQgeW91IHNoYXJlIHRoaXMg
ZmlybXdhcmUgdmVyc2lvbiwgaXMgdGhhdCBhIGdlbmVyaWMgUXVlY3RlbCBvciBhIGN1c3RvbWl6
ZWQKPj4gb25lPyBJIHdvdWxkIGxpa2UgdG8gcmVwcm9kdWNlIGFuZCBkZWJ1ZyB0aGUgcHJvYmxl
bSBidXQgdGhlIEVNMTIgSSBoYXZlIGhlcmUgaGFzCj4+ICdFTTEyR1BBUjAxQV8xMV9NNEcnLgo+
Pgo+PiBBbHNvLCB3aGF0IHBsYXRmb3JtIGRvIHlvdSB1c2UgdGhpcyBtb2RlbSB3aXRoPwo+Pgo+
IAo+IEhpIFBpb3RyLAo+IAo+IHdlIHVzZSBvdXIgb3duIHByb2R1Y3RzIFsxXSwgd2hpY2ggYXJl
IGJ1aWx0IGFyb3VuZCBhIFBvd2VyUEMgKDg1NDApIGJhc2VkIHBsYXRmb3JtLgo+IAo+IFRoZSBG
VyB3ZSByZWNlaXZlZCBmcm9tIENvZGljbyBbMl0sIFF1ZWN0ZWwncyBkaXN0cmlidXRvciBhbmQg
c3VwcG9ydCBwcm94eSBmb3IKPiBTd2l0emVybGFuZC4gV2UgZ2V0IHByZXZpZXcgdmVyc2lvbnMg
b24gcmVxdWVzdCwgdGhlcmVmb3JlIEkgYW0gbm90IHN1cmUgaWYgaXQgY2FuCj4gYmUgcG9zdGVk
IHB1YmxpY2x5LiBJJ2xsIGNoZWNrIGZvciByZXN0cmljdGlvbnMgYW5kIHByb3ZpZGUgdGhlIEZX
IGlmIGFibGUuCj4gCj4gCj4gQ2hlZXJzCj4gCj4gCj4gWzFdIGh0dHBzOi8vd3d3Lm5lcmF0ZWMu
Y29tL3Byb2R1Y3RzCj4gWzJdIGh0dHBzOi8vd3d3LmNvZGljby5jb20vCj4gCj4gX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPiBvcGVud3J0LWRldmVsIG1h
aWxpbmcgbGlzdAo+IG9wZW53cnQtZGV2ZWxAbGlzdHMub3BlbndydC5vcmcKPiBodHRwczovL2xp
c3RzLm9wZW53cnQub3JnL21haWxtYW4vbGlzdGluZm8vb3BlbndydC1kZXZlbAo+IAoKSGkgUGlv
dHIsCgpDb2RpY28vUXVlY3RlbCBjb25maXJtZWQgdGhhdCB0aGUgRU0xMiBGVyBoYXMgbm8gTkRB
IGxpbWl0YXRpb25zIGFuZCBjYW4gYmUKcHJvdmlkZWQgdG8gZGV2ZWxvcGVycy4gVGhlIGFyY2hp
dmUgaXMgYXZhaWxhYmxlIGZvciB0aGUgbmV4dCA1IGRheXMgZnJvbSBvdXIKY29tcGFueSBmaWxl
LXNlcnZlciBhdCBbMV0uIExldCBtZSBrbm93IGlmIHlvdSBuZWVkIHNvbWV0aGluZyBlbHNlLCBv
dGhlcndpc2UKbG9va2luZyBmb3J3YXJkIHdoZXRoZXIgeW91IGNhbiByZXByb2R1Y2UgdGhlIG9i
c2VydmVkIGlzc3VlLgoKCkNoZWVycwoKClsxXSBodHRwczovL3RyYW5zZmVyLm5lcmF0ZWMuY29t
LzVlN2E5OGJiMWE1MWUvRU0xMkdQQVIwMUExNU00Ry56aXAKCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCm9wZW53cnQtZGV2ZWwgbWFpbGluZyBsaXN0Cm9w
ZW53cnQtZGV2ZWxAbGlzdHMub3BlbndydC5vcmcKaHR0cHM6Ly9saXN0cy5vcGVud3J0Lm9yZy9t
YWlsbWFuL2xpc3RpbmZvL29wZW53cnQtZGV2ZWwK
