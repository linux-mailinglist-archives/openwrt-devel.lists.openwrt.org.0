Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AD5A41B8198
	for <lists+openwrt-devel@lfdr.de>; Fri, 24 Apr 2020 23:19:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:Message-ID:
	From:References:To:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=WwKnSRqh0BU4d2DWnPI/Pm/ao/AU+NoJndPNJy4xGdw=; b=V0m5nAFj+Rm8sSpdiNscA88GP
	G/GVsgixFHvJr0Dx8GzaYyKc85W093d6m3VSvQLdrkaKs4WWwFxci8cHotPnUZ6zqzBF5NSKmh5xU
	cTw4+Y0qs4DiU8MqDIpLGVjHddT2mRAzRir30vtdooO/W9IsyWBxCHeJdMRHHhbC5cLYtJifWnH9l
	81Rdjj0hON3nVQ1o5Y9lo3ytuVgwwauMs+YBAyc58ebZ0lOV003ryt4nMht4F2jr7orfxfLlWyX6q
	DmNA7tRMcsWdF/wwXOcx/xrhGgXYl9LJdScVJaD6zQB9RqIOnRGbXG8jMmmb8/V24AxIZTMuxU2Mi
	D96v9G2Pw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jS5jJ-000184-Kw; Fri, 24 Apr 2020 21:19:25 +0000
Received: from mail.nic.br ([2001:12ff:0:4::5])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jS5jD-00016d-PE
 for openwrt-devel@lists.openwrt.org; Fri, 24 Apr 2020 21:19:21 +0000
Received: from localhost (localhost [127.0.0.1])
 by mail.nic.br (Postfix) with ESMTP id 9D36819BD2D
 for <openwrt-devel@lists.openwrt.org>; Fri, 24 Apr 2020 18:19:13 -0300 (-03)
Authentication-Results: mail.nic.br (amavisd-new); dkim=pass (1024-bit key)
 header.d=nic.br
Received: from mail.nic.br ([127.0.0.1])
 by localhost (mail.nic.br [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id XtqgqIkrg3xX for <openwrt-devel@lists.openwrt.org>;
 Fri, 24 Apr 2020 18:19:13 -0300 (-03)
Received: from [200.160.6.24] (vpn-client-1.simet.nic.br [200.160.6.24])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 (Authenticated sender: henrique@nic.br)
 by mail.nic.br (Postfix) with ESMTPSA id F2A2319BBFA
 for <openwrt-devel@lists.openwrt.org>; Fri, 24 Apr 2020 18:19:12 -0300 (-03)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=nic.br; s=dkim;
 t=1587763153; bh=bsoy09lXIiLb+W6mbXUm2GBvjmKVLwUkbwnlvE5VjNg=;
 h=Subject:To:References:From:Date:In-Reply-To:From;
 b=frEK/AGsbDz5/Roar9JZ/9toDmcBvhfqhd4PIPiprha4qc6bPIDyZGDaQL9kOFaDL
 KBF9ZXuXbsCQOrRXN8kyYr2T2KAWAQZA1C526zKUAvSd2xa7ZzZXneWfsWL2k0nRyB
 A8ADJV0hggpVU0wsFTXyqOKunLpDbhF1WdSYmX5g=
To: openwrt-devel@lists.openwrt.org
References: <20200424180901.108961-1-mail@david-bauer.net>
 <0a8c11c4-4a1c-2162-2e46-6488b37d4b02@nic.br>
 <fed8ad5f-dd0d-df5d-e54b-48f20abf8b19@david-bauer.net>
From: Henrique de Moraes Holschuh <henrique@nic.br>
Organization: NIC.br
Message-ID: <aa103584-0ff7-0b72-81e4-07befc45dbb9@nic.br>
Date: Fri, 24 Apr 2020 18:19:28 -0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <fed8ad5f-dd0d-df5d-e54b-48f20abf8b19@david-bauer.net>
Content-Language: pt-BR
DMARC-Filter: OpenDMARC Filter v1.3.1 mail.nic.br F2A2319BBFA
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200424_141919_994239_3E9273D6 
X-CRM114-Status: GOOD (  11.16  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2001:12ff:0:4:0:0:0:5 listed in] [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
Subject: Re: [OpenWrt-Devel] [PATCH] ath79: remove unused TP-Link partition
 parser
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

T24gMjQvMDQvMjAyMCAxNjoxMywgRGF2aWQgQmF1ZXIgd3JvdGU6Cj4gT24gNC8yNC8yMCA4OjM5
IFBNLCBIZW5yaXF1ZSBkZSBNb3JhZXMgSG9sc2NodWggd3JvdGU6Cj4+IE9uIDI0LzA0LzIwMjAg
MTU6MDksIERhdmlkIEJhdWVyIHdyb3RlOgo+Pj4gVGhpcyBwYXJzZXIgd2FzIGFkZGVkIHdpdGgg
dGhlIHRhcmdldCwgYnV0IG5vIGRldmljZSBzZWVtcyB0byB1c2UgaXQKPj4+IGN1cnJlbnRseSwg
YXMgYWxsIHBhcnRpdGlvbnMgYXJlIHNwZWNpZmllZCBpbiB0aGUgZGV2aWNlLXRyZWUuCj4+Cj4+
IEJ1dCBpcyB0aGF0IGEgZ29vZCB0aGluZyAodXNpbmcgdGhlIERUKSwgb3IgYSBiYWQgdGhpbmcg
KHdlIHNob3VsZCBiZSBhZGFwdGluZyB0byB0aGUgcGFydGl0aW9uIHRhYmxlIGluIHRoZSBkZXZp
Y2UpID8KPiAKPiBUaGlzIHBhcnNlciBkb2VzIG5vdCBkZXBlbmQgb24gYSBwYXJ0aXRpb24tbWFw
IHN0b3JlZCBvbiB0aGUgZGV2aWNlCj4gYW5kIGluc3RlYWQgZG9lcyBhc3N1bXB0aW9ucyBiYXNl
ZCBvbiB0aGUgaW1hZ2UgaGVhZGVycyBsb2NhdGlvbi4KCkkgc2VlLiBJbiB0aGF0IGNhc2UsIGFz
c3VtcHRpb25zIGFyZSBiZXR0ZXIgb2ZmIGJlaW5nIGV4cGxpY2l0IGluIHRoZSAKRFQsIGluZGVl
ZC4uLgoKVGhhbmtzIGZvciB0aGUgZXhwbGFuYXRpb24hCgotLSAKSGVucmlxdWUgZGUgTW9yYWVz
IEhvbHNjaHVoCkFuYWxpc3RhIGRlIFByb2pldG9zCkNlbnRybyBkZSBFc3R1ZG9zIGUgUGVzcXVp
c2FzIGVtIFRlY25vbG9naWFzIGRlIFJlZGVzIGUgT3BlcmHDp8O1ZXMgCihDZXB0cm8uYnIpCis1
NSAxMSA1NTA5LTM1MzcgUi46NDAyMwpJTk9DIDIyNTQ4KjYyNQp3d3cubmljLmJyCgpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpvcGVud3J0LWRldmVsIG1h
aWxpbmcgbGlzdApvcGVud3J0LWRldmVsQGxpc3RzLm9wZW53cnQub3JnCmh0dHBzOi8vbGlzdHMu
b3BlbndydC5vcmcvbWFpbG1hbi9saXN0aW5mby9vcGVud3J0LWRldmVsCg==
