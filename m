Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D5F91D52AF
	for <lists+openwrt-devel@lfdr.de>; Fri, 15 May 2020 16:57:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:Message-ID:
	From:References:To:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=GYDd8kOkkNDKqZyOiG+qEnNhiO4G3XQpe1U4nAEI0GE=; b=ecxqmLHOzepVOR8CwmnZj9Sv7
	dR7THI3uZFtMNEKK3DUmCya5ovlPsh2qR9ar2uiM7sIRw/63otbvmpJ0S3jwMmLqDZySvYWYIm+W+
	AVefAXVOCHUveGmmmvkRKju8f847aa+Epil/eu6E/tGxZj5tNbGlTC1VhjAdwKl6szg2bQQ3ycTfU
	eB3JeRJQImld+X6a4vz3YFAOmUdkNiHTbMw6fK002bwZ8P7Fu7PBitmnSZJ03B3iycwl3Ngif3ZGq
	hhofFFkVtEBjdztUMWiaoftbkTvBONw+uweLpvWtcGGcObb/gGyWrEocGbzv2jvGaQXefixNc9abU
	gyisIS/5Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZbmC-0006fY-1U; Fri, 15 May 2020 14:57:28 +0000
Received: from mail.nic.br ([2001:12ff:0:4::5])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZbkw-0005Zl-PK
 for openwrt-devel@lists.openwrt.org; Fri, 15 May 2020 14:56:18 +0000
Received: from localhost (localhost [127.0.0.1])
 by mail.nic.br (Postfix) with ESMTP id 8A2021BD370
 for <openwrt-devel@lists.openwrt.org>; Fri, 15 May 2020 11:55:58 -0300 (-03)
Authentication-Results: mail.nic.br (amavisd-new); dkim=pass (1024-bit key)
 header.d=nic.br
Received: from mail.nic.br ([127.0.0.1])
 by localhost (mail.nic.br [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id EZv2ZYZ57xeE for <openwrt-devel@lists.openwrt.org>;
 Fri, 15 May 2020 11:55:58 -0300 (-03)
Received: from [200.160.6.24] (vpn-client-1.simet.nic.br [200.160.6.24])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 (Authenticated sender: henrique@nic.br)
 by mail.nic.br (Postfix) with ESMTPSA id 53E381BD35F
 for <openwrt-devel@lists.openwrt.org>; Fri, 15 May 2020 11:55:58 -0300 (-03)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=nic.br; s=dkim;
 t=1589554558; bh=lUOmbYOlSr15Ia6ka3SjHj3xBzB9rZfeanGIVYl3PLw=;
 h=Subject:To:References:From:Date:In-Reply-To:From;
 b=T/EouR6TB0jz6Uz3VMmFSPqrae7M1lHa0U8BwLNBEuwi4N8VehfjrlOHvq5oLm3T+
 wKPXxGb4SuaUb3L8O97YcepA3NS/Z9FABR0Y+ZfxcxtLE4dUWcgeBTQs6koq6FQmGa
 vrfd0kr35spESWEu5l79cqyYZCMmfOugn6Gt56jQ=
To: openwrt-devel@lists.openwrt.org
References: <CAJQUmm5Y2AA3Lo6mqdvbQSJc3kNTsGYwEwD4hQSyoVgkqpscww@mail.gmail.com>
 <20200515065807.GE69771@meh.true.cz>
From: Henrique de Moraes Holschuh <henrique@nic.br>
Organization: NIC.br
Message-ID: <8399572d-49ba-0eaa-b4c8-5bc1771ec78c@nic.br>
Date: Fri, 15 May 2020 11:56:20 -0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.0
MIME-Version: 1.0
In-Reply-To: <20200515065807.GE69771@meh.true.cz>
Content-Language: en-US
DMARC-Filter: OpenDMARC Filter v1.3.1 mail.nic.br 53E381BD35F
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200515_075611_182040_7E53A716 
X-CRM114-Status: UNSURE (   7.35  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2001:12ff:0:4:0:0:0:5 listed in] [list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
Subject: Re: [OpenWrt-Devel] Ubus based service watchdog?
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

T24gMTUvMDUvMjAyMCAwMzo1OCwgUGV0ciDFoHRldGlhciB3cm90ZToKPiBJbiBvdGhlciB3b3Jk
cyBJIHRoaW5rLCB0aGF0IG9uZSBjYW4gc29sdmUgdGhpcyB1c2UgY2FzZSB3aXRoIGN1cnJlbnQK
PiBzb2x1dGlvbnMsIG5vIG5lZWQgdG8gYmxvYXQgcHJvY2QuCgpBbmQgaWYgeW91J3JlIGdvaW5n
IHRvIGJsb2F0IHByb2NkLCBpdCBwYXlzIHRvIGxvb2sgYXQgd2hhdCB0aGUgCmVxdWl2YWxlbnQg
c3lzdGVtZCBmdW5jdGlvbmFsaXR5IHByb3ZpZGVzIChpdCBoYXMgYSBwZXItc2VydmljZSAKYXBw
bGljYXRpb24tYXdhcmUgd2F0Y2hkb2cgYW5kIGEgCnBsZWFzZS13YWl0LWEtYml0LW1vcmUtSS1h
bS1kb2luZy1hLWNsZWFuLXNodXRkb3duIEFQSSksIHRvIGJldHRlciBrbm93IAp0aGUgcHJvYmxl
bSBzcGFjZS4KCi0tIApIZW5yaXF1ZSBkZSBNb3JhZXMgSG9sc2NodWgKCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCm9wZW53cnQtZGV2ZWwgbWFpbGluZyBs
aXN0Cm9wZW53cnQtZGV2ZWxAbGlzdHMub3BlbndydC5vcmcKaHR0cHM6Ly9saXN0cy5vcGVud3J0
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL29wZW53cnQtZGV2ZWwK
