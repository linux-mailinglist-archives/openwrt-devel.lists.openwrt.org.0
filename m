Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B9C1A1B7DF6
	for <lists+openwrt-devel@lfdr.de>; Fri, 24 Apr 2020 20:40:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:Message-ID:
	From:References:To:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=mSNy4lCiQiLdaLHIsnizfRX5opHSaUtmt0QG/p6j3Pg=; b=DTFMZOHMiVejjN8sYKVUTkDlh
	U/gWMGBsUw4pxVsmlRmjFmlPQkg+WvfUZmUtnet5Sm3uFHPhgdo/cWotybpiJN0H167w+7XfPm346
	7VHe5gc9mUaY9lWEcfPN/81kTlI1kg1CnXF1icOnKOqvV+Gq7I2wG5A8OqcFPL0nmw9IoOF3x/3bX
	cnadQtDQdDyo/Fs+qKFGTrKDaCDcsaVdMCWcFKoRhrLQUPAovWGwKeMKrCBoORVxyxnIjZO4+SrLR
	DjzdhiSdjJ2cfPZ4R1CXClgIjCw92PU12DDmpMZfw+sAP3K6T9bK47vSS5slrxLE3hObnDdFoWN2F
	FOUP0jsDQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jS3Ez-0003Vl-4q; Fri, 24 Apr 2020 18:39:57 +0000
Received: from mail.nic.br ([2001:12ff:0:4::5])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jS3Er-0003MZ-0S
 for openwrt-devel@lists.openwrt.org; Fri, 24 Apr 2020 18:39:50 +0000
Received: from localhost (localhost [127.0.0.1])
 by mail.nic.br (Postfix) with ESMTP id BD9A919BC72
 for <openwrt-devel@lists.openwrt.org>; Fri, 24 Apr 2020 15:39:38 -0300 (-03)
Authentication-Results: mail.nic.br (amavisd-new); dkim=pass (1024-bit key)
 header.d=nic.br
Received: from mail.nic.br ([127.0.0.1])
 by localhost (mail.nic.br [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id YsCuV2xh6pM5 for <openwrt-devel@lists.openwrt.org>;
 Fri, 24 Apr 2020 15:39:38 -0300 (-03)
Received: from [200.160.6.24] (vpn-client-1.simet.nic.br [200.160.6.24])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 (Authenticated sender: henrique@nic.br)
 by mail.nic.br (Postfix) with ESMTPSA id 8447119BBF3
 for <openwrt-devel@lists.openwrt.org>; Fri, 24 Apr 2020 15:39:38 -0300 (-03)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=nic.br; s=dkim;
 t=1587753578; bh=U2Ot4gNqB+MUdIEHz0vZxDT460hRN2813as8ND2YqFw=;
 h=Subject:To:References:From:Date:In-Reply-To:From;
 b=q8mjliokBPq2swXNoGnkUvhP//XYwlPtWAWQnucow83JSZSQniOtvmUF/NVAHb7gf
 XM97PJI4a++TTIIy1c0LDmDM0JhKGEfSxHUsJRTMPvLYoIfT97SJPQqSm2QIQW8X+k
 AQSjiHuUYTY0L/GmFTT5amPf1zv7+7m15G+iFaGY=
To: openwrt-devel@lists.openwrt.org
References: <20200424180901.108961-1-mail@david-bauer.net>
From: Henrique de Moraes Holschuh <henrique@nic.br>
Organization: NIC.br
Message-ID: <0a8c11c4-4a1c-2162-2e46-6488b37d4b02@nic.br>
Date: Fri, 24 Apr 2020 15:39:53 -0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <20200424180901.108961-1-mail@david-bauer.net>
Content-Language: pt-BR
DMARC-Filter: OpenDMARC Filter v1.3.1 mail.nic.br 8447119BBF3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200424_113949_403268_4A81F304 
X-CRM114-Status: UNSURE (   8.47  )
X-CRM114-Notice: Please train this message.
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

T24gMjQvMDQvMjAyMCAxNTowOSwgRGF2aWQgQmF1ZXIgd3JvdGU6Cj4gVGhpcyBwYXJzZXIgd2Fz
IGFkZGVkIHdpdGggdGhlIHRhcmdldCwgYnV0IG5vIGRldmljZSBzZWVtcyB0byB1c2UgaXQKPiBj
dXJyZW50bHksIGFzIGFsbCBwYXJ0aXRpb25zIGFyZSBzcGVjaWZpZWQgaW4gdGhlIGRldmljZS10
cmVlLgoKQnV0IGlzIHRoYXQgYSBnb29kIHRoaW5nICh1c2luZyB0aGUgRFQpLCBvciBhIGJhZCB0
aGluZyAod2Ugc2hvdWxkIGJlIAphZGFwdGluZyB0byB0aGUgcGFydGl0aW9uIHRhYmxlIGluIHRo
ZSBkZXZpY2UpID8KCkRlcGVuZHMgb24gd2hhdCB0aGUgdmVuZG9yIGJvb3QgbG9hZGVyIHVzZXMs
IEkgc3VwcG9zZS4uLgoKLS0gCkhlbnJpcXVlIGRlIE1vcmFlcyBIb2xzY2h1aApBbmFsaXN0YSBk
ZSBQcm9qZXRvcwpDZW50cm8gZGUgRXN0dWRvcyBlIFBlc3F1aXNhcyBlbSBUZWNub2xvZ2lhcyBk
ZSBSZWRlcyBlIE9wZXJhw6fDtWVzIAooQ2VwdHJvLmJyKQorNTUgMTEgNTUwOS0zNTM3IFIuOjQw
MjMKSU5PQyAyMjU0OCo2MjUKd3d3Lm5pYy5icgoKX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18Kb3BlbndydC1kZXZlbCBtYWlsaW5nIGxpc3QKb3BlbndydC1k
ZXZlbEBsaXN0cy5vcGVud3J0Lm9yZwpodHRwczovL2xpc3RzLm9wZW53cnQub3JnL21haWxtYW4v
bGlzdGluZm8vb3BlbndydC1kZXZlbAo=
