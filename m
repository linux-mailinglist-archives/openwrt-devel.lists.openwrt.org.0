Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D8B691A4F62
	for <lists+openwrt-devel@lfdr.de>; Sat, 11 Apr 2020 12:30:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:Message-ID:
	From:References:To:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=4AhJzWoERR5jKcMntGVqsJNGT4mJOQzXwLe5nnCnup8=; b=cytzrMZ3ZVJO5EO4U+Xjr+B9K
	oNsIwoi9xooFIXIKOlsxZfGzMHVGfuJ7aJZd2I0FLPMK9/ChOikOJ5bb9MfSBvDLDaowH5El+fAhX
	cmreQrPSdwGPR6zhM9eqK4HvF2eo3ZsmnGUqPMdW+/X3NpcKRc+zxqbKmWFfn5hw9axMzgj6Zi6fK
	QM2tI/ROup5huVbPOOTQvcTHpf+YG7VrChJ1HAq6sW4NL8I5Wf5NIWpuoVRLTBavNSa0kZ/69eraK
	xrQiQSHc3XxLaMyi15EpOBySRJP7nMNogmmfYJi43wDGcCdaTPdCZRpAiQcIl2J775FGZ9dpMlGhL
	o9kVFHxyQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jNDPA-0007dV-La; Sat, 11 Apr 2020 10:30:28 +0000
Received: from meesny.iki.fi ([195.140.195.201])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jNDP0-0007cx-1I
 for openwrt-devel@lists.openwrt.org; Sat, 11 Apr 2020 10:30:19 +0000
Received: from [IPv6:2001:14ba:8091:2700:7989:54a4:247f:6e66]
 (dtckwryd5vgmmkld-q5xy-3.rev.dnainternet.fi
 [IPv6:2001:14ba:8091:2700:7989:54a4:247f:6e66])
 (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested) (Authenticated sender: hannu.nyman)
 by meesny.iki.fi (Postfix) with ESMTPSA id B20742018D;
 Sat, 11 Apr 2020 13:30:12 +0300 (EEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=iki.fi; s=meesny;
 t=1586601012;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=qSg1L77f7ks41HJBOvqO6itmoGI4tGYwGYAgBRUgaxI=;
 b=MlWG91pfIbgWuYIkGpmeBbzbKaN4h790lEZ80fymlGN1wLX5j+wygp4pmUUtGOnpgkUHo1
 6MPYTq6u+L2Y0gO5IVdt6z+5YsY78BHFm/62SE8Wt2LpZPM5HkuvtW4STpoQYPZJ61ewmN
 pj99ckYCiKhEpECYjOrAOWkUeZEt3eY=
To: =?UTF-8?Q?Petr_=c5=a0tetiar?= <ynezz@true.cz>
References: <20200410003917.22033-1-cotequeiroz@gmail.com>
 <8fc07309-5869-aa9a-5ee2-19e647cbb74f@iki.fi>
 <20200411094313.GB53854@meh.true.cz>
From: Hannu Nyman <hannu.nyman@iki.fi>
Message-ID: <4aa44d25-b8f6-2739-ca8d-01e08a83b8cd@iki.fi>
Date: Sat, 11 Apr 2020 13:30:13 +0300
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:75.0) Gecko/20100101
 Thunderbird/75.0
MIME-Version: 1.0
In-Reply-To: <20200411094313.GB53854@meh.true.cz>
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=iki.fi;
 s=meesny; t=1586601012;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=qSg1L77f7ks41HJBOvqO6itmoGI4tGYwGYAgBRUgaxI=;
 b=Tqd9Hnamc6vbr3NiWl6jFxewd//auR73LvFe1WiEoGNbQYPwFbd0YwsTQPjpf/OyyukeHa
 Z+JIv96rie+aZia/NVxPS3ul9iD37630Vi22zUI6RiJs01ym7pMsZXwqB+6IrOVyUGJlcm
 8dnARIvLYhIPRS+tUy47yz6vSL7/bEs=
ARC-Seal: i=1; s=meesny; d=iki.fi; t=1586601012; a=rsa-sha256; cv=none;
 b=L3ipHcl4CIU36FQioh+5G5X7r7373cVsSDiQIVhQEB7h5LbGY+6XSy9fNBXMfrQPggohZ8
 l8ORR2+QLLju93rS1F9BSy/+DiMm4dl7KW7qPd/rbX2g/eFMfB+S8x6/uYJ5L2xe0AIAOc
 Ofg0eSpTkzmt4o2jJI9Ox/v9gdc5fos=
ARC-Authentication-Results: i=1; ORIGINATING;
 auth=pass smtp.auth=hannu.nyman smtp.mailfrom=hannu.nyman@iki.fi
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200411_033018_423529_B97C1AE5 
X-CRM114-Status: UNSURE (   5.06  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: Re: [OpenWrt-Devel] [PATCH] build: config: allow bool to select a
 module pkg
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
Cc: openwrt-devel@lists.openwrt.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

UGV0ciDFoHRldGlhciBraXJqb2l0dGkgMTEuNC4yMDIwIGtsbyAxMi40MzoKPiBIYW5udSBOeW1h
biA8aGFubnUubnltYW5AaWtpLmZpPiBbMjAyMC0wNC0xMSAwOTowMDoxMV06Cj4KPiBIaSwKPgo+
PiBBcHBseWluZyB0aGUgcGF0Y2ggcHJvcHNlZCBoZXJlIGhlbHBlZCB0byBmaXggbXkgYXRoNzkg
bXVsdGktZGV2aWNlIGJ1aWxkLgo+IFNvIGNhbiB0aGlzIGJlIGludGVycHJldGVkIGFzIHlvdXIg
YFRlc3RlZC1ieTpgID8gVGhhbmtzLgo+Cj4gLS0geW5lenoKCgpZZXMsIGl0IGNhbi4KCkhhbm51
CgoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCm9wZW53
cnQtZGV2ZWwgbWFpbGluZyBsaXN0Cm9wZW53cnQtZGV2ZWxAbGlzdHMub3BlbndydC5vcmcKaHR0
cHM6Ly9saXN0cy5vcGVud3J0Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL29wZW53cnQtZGV2ZWwK
