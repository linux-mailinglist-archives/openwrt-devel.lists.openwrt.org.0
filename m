Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 09F971786A8
	for <lists+openwrt-devel@lfdr.de>; Wed,  4 Mar 2020 00:49:20 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=w9JlrdiAb2dTsKz3bkEqWrKaRY0Mye4SXdJOIpkaWgI=; b=Zo0FVF7w3RW3Qt
	jPg4mxqdgKnNkU282aOcZY9Y3Wxj6s2J+24a+nlc65oqgQgJ2KqnKbvXpeVRD1/UkjMA0HoR71bc7
	km6m5G9CiAwu/NINAYnN8rtC+EWTrLRL00fWVRQ7Qzg5ljLrGmVjoUXAqhWgS1k8HNmh6BQEjpNvQ
	p3SrTrCkb8f0Jv/nSfPyaabFACip93SDy3eBCyH5uZxyF9p6I2jRilLki9Ykf0QrnUfA7Ac6tnrmJ
	8eWG5dNnRTfxSIWESEpehF6fnV32/1gMx4+w7nMwvfr8NzfKypOWFEpHOx/dViC0RgML2JHBtbB71
	GN2g2Hj7Bb6GL80mBgyA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j9HHZ-0004gL-Lm; Tue, 03 Mar 2020 23:49:01 +0000
Received: from mail.tintel.eu ([2001:41d0:8:1644:0:ff:fe5c:6a54])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j9HHP-0004fm-QP
 for openwrt-devel@lists.openwrt.org; Tue, 03 Mar 2020 23:48:53 +0000
Received: from localhost (localhost [IPv6:::1])
 by mail.tintel.eu (Postfix) with ESMTP id 1B548471D3B1;
 Wed,  4 Mar 2020 00:48:41 +0100 (CET)
Received: from mail.tintel.eu ([IPv6:::1])
 by localhost (mail.tintel.eu [IPv6:::1]) (amavisd-new, port 10032)
 with ESMTP id Fcgka8UW4yHl; Wed,  4 Mar 2020 00:48:40 +0100 (CET)
Received: from localhost (localhost [IPv6:::1])
 by mail.tintel.eu (Postfix) with ESMTP id D576546D19A2;
 Wed,  4 Mar 2020 00:48:39 +0100 (CET)
DKIM-Filter: OpenDKIM Filter v2.10.3 mail.tintel.eu D576546D19A2
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linux-ipv6.be;
 s=502B7754-045F-11E5-BBC5-64595FD46BE8; t=1583279319;
 bh=W83uNdnd9MNbxUIGU4wileoTR0DIZqocusKEgKcVqZU=;
 h=To:From:Message-ID:Date:MIME-Version;
 b=JuZJyURM6CQ/a5r0ceA6J5PXjliQzLR1qLYzTaSbR5svaw9y0cUJe/bypTkGbPwoq
 +G7GHu9E/a9nnjbGkQIvqIkIpELcAgABM7t3BIcg1G93L4gtJbgaeM73sLE3wn1Lnw
 2lyf1YaNLFX+10uApwleMOmyZ9pAh+pCeuxRKNzM=
X-Virus-Scanned: amavisd-new at mail.tintel.eu
Received: from mail.tintel.eu ([IPv6:::1])
 by localhost (mail.tintel.eu [IPv6:::1]) (amavisd-new, port 10026)
 with ESMTP id u3zFKKXuRWEm; Wed,  4 Mar 2020 00:48:39 +0100 (CET)
Received: from [IPv6:2001:67c:21bc:24:92a0:d683:3fa4:10c7] (unknown
 [IPv6:2001:67c:21bc:24:92a0:d683:3fa4:10c7])
 (Authenticated sender: stijn@tintel.eu)
 by mail.tintel.eu (Postfix) with ESMTPSA id C195D471D379;
 Wed,  4 Mar 2020 00:48:38 +0100 (CET)
To: =?UTF-8?Q?Petr_=c5=a0tetiar?= <ynezz@true.cz>,
 openwrt-devel@lists.openwrt.org
References: <20200303152136.13801-1-ynezz@true.cz>
 <20200303152136.13801-2-ynezz@true.cz>
From: Stijn Tintel <stijn@linux-ipv6.be>
Message-ID: <d1def9f7-cd85-a865-601f-b55073e90736@linux-ipv6.be>
Date: Wed, 4 Mar 2020 01:48:37 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.5.0
MIME-Version: 1.0
In-Reply-To: <20200303152136.13801-2-ynezz@true.cz>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200303_154852_145137_9D3600A5 
X-CRM114-Status: UNSURE (   6.60  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 0.1 DKIM_INVALID           DKIM or DK signature exists, but is not valid
Subject: Re: [OpenWrt-Devel] [PATCH 2/2] kernel: add kernel module for
 Sensirion SPS30 PMS
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

T24gMy8wMy8yMDIwIDE3OjIxLCBQZXRyIMWgdGV0aWFyIHdyb3RlOgo+IEFkZHMgaW50byA0LjE5
IGJhY2twb3J0ZWQga2VybmVsIG1vZHVsZSBmcm9tIDUuMSBmb3IgU2Vuc2lyaW9uIFNQUzMwCj4g
cGFydGljdWxhdGUgbWF0dGVyIHNlbnNvciwgZm9yIGtlcm5lbCA1LjQgYmFja3BvcnRlZCBkZXBl
bmRlbmN5IGZpeC4KPgpJIGhhdmUgbXkgZG91YnRzIGFib3V0IHRoZSBiYWNrcG9ydCBmb3IgNC4x
OS4gSSB3b3VsZCBwcmVmZXIgdG8gc2tpcCBpdCwKYXMgd2UncmUgbW92aW5nIG1hc3RlciB0byA1
LjQuCgpTdGlqbgoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCm9wZW53cnQtZGV2ZWwgbWFpbGluZyBsaXN0Cm9wZW53cnQtZGV2ZWxAbGlzdHMub3Blbndy
dC5vcmcKaHR0cHM6Ly9saXN0cy5vcGVud3J0Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL29wZW53cnQt
ZGV2ZWwK
