Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5CF82169211
	for <lists+openwrt-devel@lfdr.de>; Sat, 22 Feb 2020 23:27:43 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:In-Reply-To:References:
	Message-Id:Date:Mime-Version:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GrhBfVbNHQ9AoQ6HJOSc+ITf11bUni9zJifYkARWMZQ=; b=p6YIejknbFMdJM
	OpnWw0rE8jQHhT7Sg8TTrjHjyaPKRk88oU2xzjdrbVw6Amri//8pDIUgj1uyA2duRBDsN72tKda13
	qfE5n1wimQTjzInNHHmqw5Jeujwpn6vZyVX1qkWYxudkPn7lQovOybSMMLdABtCiLFE13snKhLi2z
	zuK+VQVb2whWPmGHZfIyEAhd4bpmeRjyZTfpJByh0LP0fM5sjrL69s0qEwgjoOpM4ijLT4q2DFQSH
	XkrY8lpZDxly3JnFDj1/MfEi+YxM/gjBNgs11mfde199cqF6865LykOYKx8C1kVBgC39LFDkouqw4
	PAi7Tu91eYZwWWwQ5nPg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j5dFH-0007oA-1a; Sat, 22 Feb 2020 22:27:35 +0000
Received: from mail-pg1-x543.google.com ([2607:f8b0:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j5dF6-0007ne-Gp
 for openwrt-devel@lists.openwrt.org; Sat, 22 Feb 2020 22:27:25 +0000
Received: by mail-pg1-x543.google.com with SMTP id b9so2928264pgk.12
 for <openwrt-devel@lists.openwrt.org>; Sat, 22 Feb 2020 14:27:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=content-transfer-encoding:from:mime-version:subject:date:message-id
 :references:cc:in-reply-to:to;
 bh=6NKbNRnJgwVpkIwg7/i7Ll/QVp0RZAKTRenshWr0rOU=;
 b=mmnZrwziRmzzMCCy/9zHgHJbko6XgHrtZWh84e8s3sQ7l/IEiMkgCBr1MVI0tLorAZ
 ugvN69IiUC7I3bPbaIaueRcp/fWWChA1hkvR5KmSriS9SoY1jS0/tnuTVGe/PU58qrLV
 KI5mwkXfxs+BBjTPPoHIf/Tn8K67J8BBuv5cktgA/vLK8uo+PB3Enfwc9eMWKKpZQWim
 MkL5veq/OIxmxmiZvSts2umg036eNEKXY/JzrliY/jYQ4YEvYqDEmnG9r4iyQXCnJPXu
 lLHi9nrhTPajpPxXUy51vm8P1JRi+I/ugMpWb3cYEcz48ip8LsDdJUkleZg4ioR97D6p
 R3Bw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:content-transfer-encoding:from:mime-version
 :subject:date:message-id:references:cc:in-reply-to:to;
 bh=6NKbNRnJgwVpkIwg7/i7Ll/QVp0RZAKTRenshWr0rOU=;
 b=Lip5ZFNT20XMzyc8jLL0xImLKGIpjHNwPNd8fL86iHmHjup2Kvi3O8KIJ85UEq48TM
 E+BOFBL8FTZnPfCInSvpzsGSzXdscr9zTvNhtjnlKLhc+ITRvI98a2hbLwuFh2Yt+dOi
 SzY7sVX4TFhJ4ft0R36x6+sYRS804EaHTJ1/oBLlttVdybYA/ajZKKNBD19KAtKtmG4N
 a9R5AhJNZAlcgm9ELKTkWdDqRejOGBPWBSi0Sd/vx8Y5do8uM4i2o8ye2bm71LlsZdDy
 fyHDCoPRKz04dB4E4F6uuFW5AQq4HUDmFq28H+0XP3DjETW7dMZyCAluJPg53VbUh6rN
 Ll+A==
X-Gm-Message-State: APjAAAVR0M3cgv8CXNmUTfQMYdwF7HGcXsu/warun7HN1ADRG+NTuPSD
 TJ4rPk0cY352bpwjh0eg5gtUStfyaJY=
X-Google-Smtp-Source: APXvYqx58MU80tapNrePLeU+z99ZeB59bT1qoT5wDjHr5oLkQo1gTl3WydHqNbo9Sfyb/1xz3hJuyA==
X-Received: by 2002:a63:5fcf:: with SMTP id
 t198mr44979519pgb.383.1582410443724; 
 Sat, 22 Feb 2020 14:27:23 -0800 (PST)
Received: from [192.168.0.147] ([69.42.0.214])
 by smtp.gmail.com with ESMTPSA id y197sm7592330pfc.79.2020.02.22.14.27.22
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sat, 22 Feb 2020 14:27:23 -0800 (PST)
From: Rosen Penev <rosenp@gmail.com>
Mime-Version: 1.0 (1.0)
Date: Sat, 22 Feb 2020 14:27:21 -0800
Message-Id: <2AE62366-B050-4136-86E8-2D65DC950C5A@gmail.com>
References: <11d129ad-89d6-9b84-449e-9fef52721c93@hauke-m.de>
In-Reply-To: <11d129ad-89d6-9b84-449e-9fef52721c93@hauke-m.de>
To: Hauke Mehrtens <hauke@hauke-m.de>
X-Mailer: iPhone Mail (17C54)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200222_142724_581520_342F3A0F 
X-CRM114-Status: GOOD (  10.86  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:543 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [rosenp[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: Re: [OpenWrt-Devel] [PATCH] target: bump minimum CPU type to
 pentium-mmx
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

CgpTZW50IGZyb20gbXkgaVBob25lCgo+IE9uIEZlYiAyMiwgMjAyMCwgYXQgNjoxMyBBTSwgSGF1
a2UgTWVocnRlbnMgPGhhdWtlQGhhdWtlLW0uZGU+IHdyb3RlOgo+IAo+IO+7v09uIDEvMTIvMjAg
NTo0NCBBTSwgUm9zZW4gUGVuZXYgd3JvdGU6Cj4+IGY0ZjhmNGExODAzNjZlZTkwZmQ4ZTE1MzIx
M2RiMmNiNzQ2Y2EzNjEgYnJva2UgZmZtcGVnIGNvbXBpbGF0aW9uIHdpdGggeDg2Cj4+IAo+PiBU
aGUgcmVhc29uIGlzIHRoYXQgZmZtcGVnJ3MgeDg2IGFzc2VtYmx5IHJlcXVpcmVzIGF0IGxlYXN0
IE1NWCwgd2hpY2ggdGhlCj4+IHBlbnRpdW0gQ1BVX1RZUEUgd2FzIHByZXZlbnRpbmcuCj4gCj4g
QXMgZmFyIGFzIEkgdW5kZXJzdGFuZCBpdCBNTVggaXMgYWxyZWFkeSBuZWVkZWQgYW5kIHlvdSBq
dXN0IHdhbnQgdG8KPiByZW5hbWUgdGhlIHRvb2xjaGFpbiBmcm9tIHBlbnRpdW0gdG8gcGVudGl1
bV9tbXgsIGlzIHRoaXMgY29ycmVjdD8KWWVhaC4gQ2hhbmdpbmcgdGhlIENQVV9UWVBFIHRvIHBl
bnRpdW0tbW14IGZpeGVzIE5BU00uCj4gCj4+IAo+PiBGaXhlcyBmZm1wZWcgY29tcGlsYXRpb24g
b24geDg2X2xlZ2FjeSBhbmQgeDg2X2dlb2RlLgo+PiAKPj4gU2lnbmVkLW9mZi1ieTogUm9zZW4g
UGVuZXYgPHJvc2VucEBnbWFpbC5jb20+Cj4+IC0tLQo+PiBpbmNsdWRlL3RhcmdldC5tayB8IDQg
KystLQo+PiAxIGZpbGUgY2hhbmdlZCwgMiBpbnNlcnRpb25zKCspLCAyIGRlbGV0aW9ucygtKQo+
PiAKPj4gZGlmZiAtLWdpdCBhL2luY2x1ZGUvdGFyZ2V0Lm1rIGIvaW5jbHVkZS90YXJnZXQubWsK
Pj4gaW5kZXggYTgxM2JhMmQyZC4uYTMwNDAwYzViYyAxMDA2NDQKPj4gLS0tIGEvaW5jbHVkZS90
YXJnZXQubWsKPj4gKysrIGIvaW5jbHVkZS90YXJnZXQubWsKPj4gQEAgLTE3Nyw4ICsxNzcsOCBA
QCBpZmVxICgkKERVTVApLDEpCj4+ICAgICBDUFVfQ0ZMQUdTX29jdGVvbnBsdXMgPSAtbWFyY2g9
b2N0ZW9uKyAtbWFiaT02NAo+PiAgIGVuZGlmCj4+ICAgaWZlcSAoJChBUkNIKSxpMzg2KQo+PiAt
ICAgIENQVV9UWVBFID89IHBlbnRpdW0KPj4gLSAgICBDUFVfQ0ZMQUdTX3BlbnRpdW0gPSAtbWFy
Y2g9cGVudGl1bS1tbXgKPj4gKyAgICBDUFVfVFlQRSA/PSBwZW50aXVtLW1teAo+PiArICAgIENQ
VV9DRkxBR1NfcGVudGl1bS1tbXggPSAtbWFyY2g9cGVudGl1bS1tbXgKPj4gICAgIENQVV9DRkxB
R1NfcGVudGl1bTQgPSAtbWFyY2g9cGVudGl1bTQKPj4gICBlbmRpZgo+PiAgIGlmbmVxICgkKGZp
bmRzdHJpbmcgYXJtLCQoQVJDSCkpLCkKPj4gCj4gCj4gCgpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpvcGVud3J0LWRldmVsIG1haWxpbmcgbGlzdApvcGVu
d3J0LWRldmVsQGxpc3RzLm9wZW53cnQub3JnCmh0dHBzOi8vbGlzdHMub3BlbndydC5vcmcvbWFp
bG1hbi9saXN0aW5mby9vcGVud3J0LWRldmVsCg==
