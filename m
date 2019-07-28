Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DC85C7813B
	for <lists+openwrt-devel@lfdr.de>; Sun, 28 Jul 2019 21:37:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eS4U1diLR58rTtwPxzC7auikc/0DEyr5Y/b+bOOID8I=; b=PKqdzduG5mbVmY
	az8PBdxdwGbgXh7hKn2PN0oH0n4DdYtGDA3/SUzZ7/xnWxy8l4IXUXIJY01ykS8p9NDeO8mBn8+1f
	PIarQPob+bpRPFdN3pEkXappt1jqZtOGxfxjjT9d7iYPAJLapxJGyW+Jd6APqc2/RlE4RJ3kd+eEy
	aOarlHyuUww87Vjjeg5e0zdlc2csddaRnPedYPdqaaDS29OkoUGelodCSt8kfrnULHAbJfrKSpbj2
	gINdGINm5iHf810H8Ivp/Z3y78PserJmIKjLqXTHhgFgqvIOiLzSB96Tlp2kXIJZ92TTq07Eyhrs4
	FbcPvOuo2igrX+Eaip4Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hrozP-0005Be-9f; Sun, 28 Jul 2019 19:37:51 +0000
Received: from mail.tintel.eu ([54.36.12.13])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hrozG-00050j-OM
 for openwrt-devel@lists.openwrt.org; Sun, 28 Jul 2019 19:37:44 +0000
Received: from localhost (localhost [IPv6:::1])
 by mail.tintel.eu (Postfix) with ESMTP id D2A714451E2F
 for <openwrt-devel@lists.openwrt.org>; Sun, 28 Jul 2019 21:37:35 +0200 (CEST)
Received: from mail.tintel.eu ([IPv6:::1])
 by localhost (mail.tintel.eu [IPv6:::1]) (amavisd-new, port 10032)
 with ESMTP id mghUkU42DwBd for <openwrt-devel@lists.openwrt.org>;
 Sun, 28 Jul 2019 21:37:35 +0200 (CEST)
Received: from localhost (localhost [IPv6:::1])
 by mail.tintel.eu (Postfix) with ESMTP id 474674451E39
 for <openwrt-devel@lists.openwrt.org>; Sun, 28 Jul 2019 21:37:35 +0200 (CEST)
DKIM-Filter: OpenDKIM Filter v2.10.3 mail.tintel.eu 474674451E39
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linux-ipv6.be;
 s=502B7754-045F-11E5-BBC5-64595FD46BE8; t=1564342655;
 bh=QY8mw1eddkXm1oImfT0K67eUkJqUwgJ027dC1PBo2vQ=;
 h=To:From:Message-ID:Date:MIME-Version;
 b=oZqmgi9DsFuaDXgTPI/ZvbDoq2oKSwgZThcIfXwdqGiWncdv10INwtR+cGWcfiZPc
 G1Xp9m0xxakotoYs86sqpLu3QM+TRd2ajFjrYfMJK5sEdEOLgdZSV/V543kIxpVPGB
 XRKKcymYCgbrBANzycoIxNbXMt/yKbwXpxcR23C8=
X-Virus-Scanned: amavisd-new at mail.tintel.eu
Received: from mail.tintel.eu ([IPv6:::1])
 by localhost (mail.tintel.eu [IPv6:::1]) (amavisd-new, port 10026)
 with ESMTP id No0e_vaoLn7y for <openwrt-devel@lists.openwrt.org>;
 Sun, 28 Jul 2019 21:37:35 +0200 (CEST)
Received: from [192.168.54.10] (ar0.sof.bg.adlevio.net [87.227.188.250])
 (Authenticated sender: stijn@tintel.eu)
 by mail.tintel.eu (Postfix) with ESMTPSA id 5E7734451E2F
 for <openwrt-devel@lists.openwrt.org>; Sun, 28 Jul 2019 21:37:34 +0200 (CEST)
To: openwrt-devel@lists.openwrt.org
References: <20190723133717.20010-1-ynezz@true.cz>
From: Stijn Tintel <stijn@linux-ipv6.be>
Openpgp: preference=signencrypt
Message-ID: <52fc885c-207d-7189-4900-9797c093118f@linux-ipv6.be>
Date: Sun, 28 Jul 2019 22:37:33 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.1
MIME-Version: 1.0
In-Reply-To: <20190723133717.20010-1-ynezz@true.cz>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190728_123743_095240_D7D807B3 
X-CRM114-Status: UNSURE (   7.94  )
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
Subject: Re: [OpenWrt-Devel] [PATCH 1/2] base-files: make USE_PROCD=1 default
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

T24gMjMvMDcvMTkgMTY6MzcsIFBldHIgxaB0ZXRpYXIgd3JvdGU6Cj4gVHJhbnNpdGlvbiBwZXJp
b2QgZm9yIGluaXQgc2NyaXB0IG1pZ3JhdGlvbiB3YXMgbG9uZyBlbm91Z2gsIGxldCdzCj4gbWFr
ZSBVU0VfUFJPQ0Q9MSBkZWZhdWx0IG5vdyBzbyB0aGVyZSdzIGVub3VnaCB0aW1lIHRvIGNvbnZl
cnQgdGhlCj4gcmVtYWluaW5nIHNlcnZpY2VzL2luaXQgc2NyaXB0cyBmb3IgdGhlIG5leHQgcmVs
ZWFzZS4KPgo+IFNpZ25lZC1vZmYtYnk6IFBldHIgxaB0ZXRpYXIgPHluZXp6QHRydWUuY3o+Cj4g
LS0tCj4gIHBhY2thZ2UvYmFzZS1maWxlcy9maWxlcy9ldGMvcmMuY29tbW9uIHwgMTEzICsrKysr
KysrKystLS0tLS0tLS0tLS0tLS0KPiAgMSBmaWxlIGNoYW5nZWQsIDQ3IGluc2VydGlvbnMoKyks
IDY2IGRlbGV0aW9ucygtKQo+CkFja2VkLWJ5OiBTdGlqbiBUaW50ZWwgPHN0aWpuQGxpbnV4LWlw
djYuYmU+CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpv
cGVud3J0LWRldmVsIG1haWxpbmcgbGlzdApvcGVud3J0LWRldmVsQGxpc3RzLm9wZW53cnQub3Jn
Cmh0dHBzOi8vbGlzdHMub3BlbndydC5vcmcvbWFpbG1hbi9saXN0aW5mby9vcGVud3J0LWRldmVs
Cg==
