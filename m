Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D01EF417EE
	for <lists+openwrt-devel@lfdr.de>; Wed, 12 Jun 2019 00:10:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nX05Zwf+m1ESujq8MR08CaDCED5ijk3qMf/zUlUjhew=; b=JPXqTho710i5qy
	b25418L6iAUk4RXQMmTxBiw/UsgrNZy0V1Yi72xA1/7RDmFPr3KxPEK5S048+BPwBnnGXuH/4T6R/
	3NiVP6O9ZhLzy10UYxR9SZSHM40aOvEHubbYxqHscUywJZ0dn4HGRF6i8dkqKsoukKtQElo9jgCY4
	dVqVaP2ptsPfErAyqjd5zl4zrOi7es2vZSZ10ae34c30wWROv/zkGFhJsctSwCeMABmkjlvZY+iBn
	CS10LtnF00/o6F+eGKEX52znMnLrm5SREyzNKLXVg3af57bl/y66zCgr8fuuTGsDMD7i8n7XQUWdR
	rcX4H8OrqpEIpEI5iglQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1haoyY-0001aj-0N; Tue, 11 Jun 2019 22:10:42 +0000
Received: from mail.tintel.eu ([2001:41d0:8:1644:0:ff:fe5c:6a54])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1haoyP-0001aH-FN
 for openwrt-devel@lists.openwrt.org; Tue, 11 Jun 2019 22:10:35 +0000
Received: from localhost (localhost [IPv6:::1])
 by mail.tintel.eu (Postfix) with ESMTP id 33CD2443E710
 for <openwrt-devel@lists.openwrt.org>; Wed, 12 Jun 2019 00:10:29 +0200 (CEST)
Received: from mail.tintel.eu ([IPv6:::1])
 by localhost (mail.tintel.eu [IPv6:::1]) (amavisd-new, port 10032)
 with ESMTP id mIQLcvKyvC7t for <openwrt-devel@lists.openwrt.org>;
 Wed, 12 Jun 2019 00:10:28 +0200 (CEST)
Received: from localhost (localhost [IPv6:::1])
 by mail.tintel.eu (Postfix) with ESMTP id A53EB443E713
 for <openwrt-devel@lists.openwrt.org>; Wed, 12 Jun 2019 00:10:28 +0200 (CEST)
DKIM-Filter: OpenDKIM Filter v2.10.3 mail.tintel.eu A53EB443E713
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linux-ipv6.be;
 s=502B7754-045F-11E5-BBC5-64595FD46BE8; t=1560291028;
 bh=DQ4BJP7V6gNDP9QhQseHmor7BICsX3HXyY8rlVW0cp8=;
 h=To:From:Message-ID:Date:MIME-Version;
 b=tq/abYdalLfCHx818GHWZ2d5l9vdn20deh4bBU4qg+TEPjxbBJ9pUfRp+S+WZqAKF
 1DZU9JMo/QC+6zhWLw/c6ks/6sIoNJOzPeXdHeFBSEXBmG+feRTzjO+6ELfHFWqbZG
 NVuxNyu4NjDdre4lF9Ze5jRZOdxOCYHZn/3Nq7y8=
X-Virus-Scanned: amavisd-new at mail.tintel.eu
Received: from mail.tintel.eu ([IPv6:::1])
 by localhost (mail.tintel.eu [IPv6:::1]) (amavisd-new, port 10026)
 with ESMTP id 42rUwI46oWV8 for <openwrt-devel@lists.openwrt.org>;
 Wed, 12 Jun 2019 00:10:28 +0200 (CEST)
Received: from [IPv6:2001:67c:21bc:24::adb] (taz.sof.bg.adlevio.net
 [IPv6:2001:67c:21bc:24::adb]) (Authenticated sender: stijn@tintel.eu)
 by mail.tintel.eu (Postfix) with ESMTPSA id 2F170443E710
 for <openwrt-devel@lists.openwrt.org>; Wed, 12 Jun 2019 00:10:28 +0200 (CEST)
To: openwrt-devel@lists.openwrt.org
References: <20190608114809.9480-1-avalentin@marcant.net>
 <20190608114809.9480-3-avalentin@marcant.net>
From: Stijn Tintel <stijn@linux-ipv6.be>
Openpgp: preference=signencrypt
Message-ID: <39cf6dcf-6f6f-abeb-a405-7d947213e04c@linux-ipv6.be>
Date: Wed, 12 Jun 2019 01:10:27 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <20190608114809.9480-3-avalentin@marcant.net>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190611_151033_805356_03E2D073 
X-CRM114-Status: UNSURE (   5.41  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 0.1 DKIM_INVALID           DKIM or DK signature exists, but is not valid
Subject: Re: [OpenWrt-Devel] [PATCH v3 2/3] network/config: add xfrm
 interface support scripts
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

T24gOC8wNi8xOSAxNDo0OCwgQW5kcsOpIFZhbGVudGluIHdyb3RlOgo+IFRoaXMgcGFja2FnZSBh
ZGRzIHNjcmlwdHMgZm9yIHhmcm0gaW50ZXJmYWNlcyBzdXBwb3J0Lgo+IEV4YW1wbGUgY29uZmln
dXJhdGlvbiB2aWEgL2V0Yy9jb25maWcvbmV0d29yazoKPgo+IGNvbmZpZyBpbnRlcmZhY2UgJ3hm
cm0wJwo+ICAgICAgICAgb3B0aW9uIHByb3RvICd4ZnJtJwo+ICAgICAgICAgb3B0aW9uIG10dSAn
MTMwMCcKPiAgICAgICAgIG9wdGlvbiB6b25lICdWUE4nCj4gICAgICAgICBvcHRpb24gdHVubGlu
ayAnd2FuJwo+ICAgICAgICAgb3B0aW9uIGlmaWQgMzAKPgo+IGNvbmZpZyBpbnRlcmZhY2UgJ3hm
cm0wX3N0YXRpYycKPiAgICAgICAgIG9wdGlvbiBwcm90byAnc3RhdGljJwo+ICAgICAgICAgb3B0
aW9uIGlmbmFtZSAnQHhmcm0wJwo+ICAgICAgICAgb3B0aW9uIGlwNmFkZHIgJ2ZlODA6OjEvNjQn
Cj4gICAgICAgICBvcHRpb24gaXBhZGRyICcxMC4wLjAuMS8zMCcKPgpJcyB0aGVyZSByZWFsbHkg
bm8gc2ltcGxlciB3YXkgdG8gZG8gdGhpcz8gQ2FuJ3Qgd2UgY29tYmluZSB0aGVzZSBpbnRvIDEK
Y29uZmlnIGludGVyZmFjZSAneHh4JyBzZWN0aW9uPwoKU3Rpam4KCgpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpvcGVud3J0LWRldmVsIG1haWxpbmcgbGlz
dApvcGVud3J0LWRldmVsQGxpc3RzLm9wZW53cnQub3JnCmh0dHBzOi8vbGlzdHMub3BlbndydC5v
cmcvbWFpbG1hbi9saXN0aW5mby9vcGVud3J0LWRldmVsCg==
