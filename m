Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CCF8517469E
	for <lists+openwrt-devel@lfdr.de>; Sat, 29 Feb 2020 12:56:56 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:MIME-Version:Date:Message-ID:From:To:
	Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=sjc6mDgBHVN04v/kHzsXW3E80Uruk1sk1aSNm8D1Axk=; b=q78Cw4dWFYCT0N
	ScS76b5Me9QWFC30YhVx7+3bb+PKdRnVOBRQ7uUnoV1NFfYc2XUcKgmk6SlGHJi/+vFrJT3Om7cB4
	n5CgGWEFHrGdVvZgV4iDih37hRGm6t0uXOg68GTJWoxXRydBFS+9LxZhgcCfWuoltQVdY09/2U4QE
	UYBEcAQUcxL2+B0D1zi4Co0JrRha/bE0JBlYMmKQ+ZezWlWlEtHoAErDrQSpQqWs3jYvuZgX4BvzZ
	/fS4hj8FZTnOhsfor9bffqrWjqnX8fX50zwFuf/EwxOI9kYqMeaft7i+i2tnmiziEeSD51gDwZnrV
	Lpx53MgMX1qq8e+MgRoA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j80ja-00064n-Rw; Sat, 29 Feb 2020 11:56:42 +0000
Received: from merlin.infradead.org ([2001:8b0:10b:1231::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j80jW-00064T-FA
 for openwrt-devel@bombadil.infradead.org; Sat, 29 Feb 2020 11:56:38 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=merlin.20170209; h=Content-Transfer-Encoding:Content-Type:
 MIME-Version:Date:Message-ID:Subject:From:To:Sender:Reply-To:Cc:Content-ID:
 Content-Description:In-Reply-To:References;
 bh=Ynmj0k/6glgYyMktUjSVpGbFuXt5f94gKqkHU58c8Tw=; b=gkVcJEQzDXG5Hn8gCpUjRaMKZp
 4LoUlSzGDM5f9vL0zCUtFpcIHNMbbbuvMb83TRxM1PRnTIK1rE4SUXhpCGyPR1ERGnUvoo6l78Q8o
 PFMyoAei6063HJ5m6uwyprTFr2KYUk+TJ7yQnSw0ycgmEAL7EFlo9y3a4KONK2KF3Ga/U0WxhCo2+
 iJGgXfojmkcahq9LYLUvAicvPPMRibHTKjBQ1cYK6lIq0F+eFvHuZQpEfrrNTrLtyT13ax0h27SiS
 +cRD2NMqzgut4f45vgOPPYu0p7oPO7t/NA+69vh4CyV/dW18Q85yUr259oTmDwg9rwhRGmu70ieCm
 x2fcqvvw==;
Received: from relay1-d.mail.gandi.net ([217.70.183.193])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j80jT-0000zb-3h
 for openwrt-devel@lists.openwrt.org; Sat, 29 Feb 2020 11:56:36 +0000
X-Originating-IP: 72.234.241.177
Received: from [192.168.22.124] (udp057936uds.hawaiiantel.net [72.234.241.177])
 (Authenticated sender: mail@aparcar.org)
 by relay1-d.mail.gandi.net (Postfix) with ESMTPSA id AA16B240007
 for <openwrt-devel@lists.openwrt.org>; Sat, 29 Feb 2020 11:55:57 +0000 (UTC)
To: openwrt-devel@lists.openwrt.org
From: Paul Spooren <mail@aparcar.org>
Message-ID: <cc57d1d2-51cc-c43f-3cd1-73de5e3429d2@aparcar.org>
Date: Sat, 29 Feb 2020 01:55:54 -1000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.5.0
MIME-Version: 1.0
Content-Language: en-US
X-Spam-Note: CRM114 invocation failed
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on merlin.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.193 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [217.70.183.193 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
Subject: [OpenWrt-Devel] ImageBuilder: satisfy_dependencies_for [...] iw
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

SGksCgpmb3IgdGhlIGxhc3QgZmV3IGRheXMgSSBnZXQgdGhlIGZvbGxvd2luZyBlcnJvciBmb3Ig
bXVsdGlwbGUgdGFyZ2V0cywgCndvdWxkIGl0IGJlIHBvc3NpYmxlIHRvIHJlcnVuIHRoZSBzbmFw
c2hvdCBzZXJ2ZXJzIHRvIHJlYnVpbGQgdGhlIApwYWNrYWdlIGBpd2A/CgokIG1ha2UgbWFuaWZl
c3QgUFJPRklMRT0iZGV2b2xvX2R2bDE3NTBlIgoKWy4uLl0KCkNvbGxlY3RlZCBlcnJvcnM6CiDC
oCogc2F0aXNmeV9kZXBlbmRlbmNpZXNfZm9yOiBDYW5ub3Qgc2F0aXNmeSB0aGUgZm9sbG93aW5n
IGRlcGVuZGVuY2llcyAKZm9yIGttb2QtYXRoMTBrLWN0OgogwqAqIMKgwqDCoCBpdwogwqAqIG9w
a2dfaW5zdGFsbF9jbWQ6IENhbm5vdCBpbnN0YWxsIHBhY2thZ2Uga21vZC1hdGgxMGstY3QuCm1h
a2VbMl06ICoqKiBbTWFrZWZpbGU6MTU3OiBwYWNrYWdlX2luc3RhbGxdIEVycm9yIDI1NQptYWtl
WzFdOiAqKiogW01ha2VmaWxlOjEyNzogX2NhbGxfbWFuaWZlc3RdIEVycm9yIDIKbWFrZTogKioq
IFtNYWtlZmlsZToyMDc6IG1hbmlmZXN0XSBFcnJvciAyCgpUaGFua3MsClBhdWwKCgpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpvcGVud3J0LWRldmVsIG1h
aWxpbmcgbGlzdApvcGVud3J0LWRldmVsQGxpc3RzLm9wZW53cnQub3JnCmh0dHBzOi8vbGlzdHMu
b3BlbndydC5vcmcvbWFpbG1hbi9saXN0aW5mby9vcGVud3J0LWRldmVsCg==
