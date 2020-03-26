Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 166F119445B
	for <lists+openwrt-devel@lfdr.de>; Thu, 26 Mar 2020 17:32:58 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:Message-ID:
	From:References:To:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=dK9ONOS9x1J5TT83c2KIGuS8qB4cYHUxTO/N77UVaOI=; b=VAW6CcWDHTdHg2c1Mpg7/IpWC
	w55eymlcgZUmrJnYaCy764qrKY5CCf/pWCLXFGXGCkXnxsxuCikmc8N+w9omg7YZHXS037pTzQxhT
	CQgN0S3W9CMISbmyHt0Urv9soISt2zwWmAKanpFx2efc58HDzLsEYO2WVwlsmskpmPBErgZT69pCU
	u4lvzZobaFqK2MILTyjwfFry7cUU5loJPr9bOoa7W+IJm71Jw14Sl72MTWCzYeeoQXls3/Ypal3aB
	gA/9dIciypp45KwkcUTMrlu9iR1/9gcd/mGX09j2TC5u0COvVGFcqODgFLXzlWg+2B7f59i4NeDo3
	mXTWTKC6Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jHVR5-0001fQ-VU; Thu, 26 Mar 2020 16:32:51 +0000
Received: from mail.nic.br ([2001:12ff:0:4::5])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jHVQu-0001es-MV
 for openwrt-devel@lists.openwrt.org; Thu, 26 Mar 2020 16:32:42 +0000
Received: from localhost (localhost [127.0.0.1])
 by mail.nic.br (Postfix) with ESMTP id 6E2DD2123D2
 for <openwrt-devel@lists.openwrt.org>; Thu, 26 Mar 2020 13:32:31 -0300 (-03)
X-Virus-Scanned: Debian amavisd-new at mail.nic.br
X-Spam-Flag: NO
X-Spam-Score: -3.1
X-Spam-Level: 
X-Spam-Status: No, score=-3.1 tagged_above=-9999 required=4
 tests=[ALL_TRUSTED=-1, BAYES_00=-1.9, DKIM_SIGNED=0.1,
 DKIM_VALID=-0.1, DKIM_VALID_AU=-0.1, DKIM_VALID_EF=-0.1]
 autolearn=ham autolearn_force=no
Authentication-Results: mail.nic.br (amavisd-new); dkim=pass (1024-bit key)
 header.d=nic.br
Received: from mail.nic.br ([127.0.0.1])
 by localhost (mail.nic.br [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Ghj94jqBAm_e for <openwrt-devel@lists.openwrt.org>;
 Thu, 26 Mar 2020 13:32:29 -0300 (-03)
Received: from [192.168.23.216] (unknown [177.194.7.32])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 (Authenticated sender: henrique@nic.br)
 by mail.nic.br (Postfix) with ESMTPSA id 86F4A2123C5
 for <openwrt-devel@lists.openwrt.org>; Thu, 26 Mar 2020 13:32:29 -0300 (-03)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=nic.br; s=dkim;
 t=1585240349; bh=hALtUGdUXbSpbQGHWmBnoc2DlDSO+xGcYwtc6sr7O2s=;
 h=Subject:To:References:From:Date:In-Reply-To:From;
 b=teeegiTcb5upaaVE45GRstYg8ABFdYD4q7gB7wsxlgbHVb9QoFThFFioxMHZga6zQ
 jxWaSn36hDP3i85YT3jSXsCLnbAN0R12uyXl3ywnftyamZUQt8yRnLbEPUgg2Pk2yP
 HljjIimxFP5fjKc1QMv3yFRKvH5wiV6gRMorR0W8=
To: openwrt-devel@lists.openwrt.org
References: <20200326155654.48317-1-freifunk@adrianschmutzler.de>
From: Henrique de Moraes Holschuh <henrique@nic.br>
Organization: NIC.br
Message-ID: <4bc61534-4f27-d0a4-6b7a-ef9f377e4b17@nic.br>
Date: Thu, 26 Mar 2020 13:32:36 -0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
In-Reply-To: <20200326155654.48317-1-freifunk@adrianschmutzler.de>
Content-Language: en-US
DMARC-Filter: OpenDMARC Filter v1.3.1 mail.nic.br 86F4A2123C5
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200326_093241_277907_EDA6FA9D 
X-CRM114-Status: GOOD (  13.93  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2001:12ff:0:4:0:0:0:5 listed in] [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
Subject: Re: [OpenWrt-Devel] [RFC PATCH] ath79: clarify purpose of factory
 image
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

T24gMjYvMDMvMjAyMCAxMjo1NiwgQWRyaWFuIFNjaG11dHpsZXIgd3JvdGU6Cj4gV2hpbGUgdGhl
IHB1cnBvc2Ugb2YgYSBmYWN0b3J5IGltYWdlIGluIGdlbmVyYWwgaXMgdG8gZmxhc2ggYQo+IGRl
dmljZSB3aXRoIHZlbmRvciBPUyAiZGlyZWN0bHkiLCBzb21lIHZhZ3VlbmVzcyBoYXMgZXZvbHZl
ZCBvdmVyCj4gdGhlIHllYXJzIHdpdGggcmVzcGVjdCB0byBhZGRpdGlvbmFsIHVzZXMgb2YgdGhl
c2UgaW1hZ2VzLgo+IAo+IE9uZSBjb21tb24gY2FzZSBpcyB3aGVuIGEgZGV2aWNlIHN1cHBvcnRz
IFRGVFAgcmVjb3ZlcnkuCj4gUGFydGljdWxhcmx5IHdpdGggVFAtTGluayBkZXZpY2VzIGluIGFy
NzF4eC9hdGg3OSwgaXQgaXMgY29tbW9uCj4gdGhhdCB0aGUgZmFjdG9yeSBpbWFnZSBjYW4gYmUg
Zmxhc2hlZCB2aWEgVEZUUCB3aXRob3V0IGFueSBhZGRpdGlvbmFsCj4gbWVhc3VyZXMuIEluIGNv
bnRyYXN0LCBvbiBzb21lIHJhbWlwcyBkZXZpY2VzIHRoZSBzYW1lIHByb2NlZHVyZSBtaWdodAo+
IG92ZXJ3cml0ZSB5b3VyIHUtYm9vdCBwYXJ0aXRpb24gYW5kIG1ha2UgdGhlIGRldmljZSB1bmJv
b3RhYmxlLgo+IEhvd2V2ZXIsIGluIGJvdGggY2FzZXMgeW91IG1pZ2h0IG9ubHkgaGF2ZSBhIGZh
Y3RvcnkuYmluIHdoaWNoCj4gd29uJ3QgcmV2ZWFsIGFueSBmdXJ0aGVyIGluZm9ybWF0aW9uIGp1
c3QgYnkgaXRzZWxmLgo+IAo+IFRvIGltcHJvdmUgdGhlIHNpdHVhdGlvbiBhdCBsZWFzdCBhIGJp
dCwgdGhpcyBjb21taXQgdHJpZXMgdG8KPiBjbGFyaWZ5IHRoZSBpbWFnZSBuYW1lcyBieSBpbnRy
b2R1Y2luZyB0aGUgZm9sbG93aW5nIHRocmVlIHNjaGVtZXM6Cj4gCj4gZmFjdG9yeS5iaW4gLSB1
c2VkIGZyb20gdmVuZG9yIE9TLCBfbm90XyBzdWl0YWJsZSBmb3IgVEZUUAo+IGZhY3RvcnktdGZ0
cC5iaW4gLSB1c2VkIGZyb20gdmVuZG9yIE9TLCBfYWxzb18gc3VpdGFibGUgZm9yIFRGVFAKPiB0
ZnRwLmJpbiAtIGNhbiBfbm90XyBiZSB1c2VkIGZyb20gdmVuZG9yIE9TLCBidXQgY2FuIGJlIHVz
ZWQgdmlhIFRGVFAKClRoZSBuYW1lICJ0ZnRwLXJlY292ZXJ5IiAobWF5YmUgInRmdHBfcmVjb3Zl
cnkiKSBoYXMgYWxyZWFkeSBzZWVuIHNvbWUgCnVzZSBvbiBpbWFnZXMgYnVpbHQgZm9yIHRoZSBw
dXJwb3NlcyBvZiBiZWluZyB1c2VkIGZvciBURlRQLCBtYXliZSBpdCAKd291bGQgYmUgYmV0dGVy
IHRvIGtlZXAgdGhhdCBuYW1pbmc/CgotLSAKSGVucmlxdWUgZGUgTW9yYWVzIEhvbHNjaHVoCkFu
YWxpc3RhIGRlIFByb2pldG9zCkNlbnRybyBkZSBFc3R1ZG9zIGUgUGVzcXVpc2FzIGVtIFRlY25v
bG9naWFzIGRlIFJlZGVzIGUgT3BlcmHDp8O1ZXMgCihDZXB0cm8uYnIpCis1NSAxMSA1NTA5LTM1
MzcgUi46NDAyMwpJTk9DIDIyNTQ4KjYyNQp3d3cubmljLmJyCgpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpvcGVud3J0LWRldmVsIG1haWxpbmcgbGlzdApv
cGVud3J0LWRldmVsQGxpc3RzLm9wZW53cnQub3JnCmh0dHBzOi8vbGlzdHMub3BlbndydC5vcmcv
bWFpbG1hbi9saXN0aW5mby9vcGVud3J0LWRldmVsCg==
