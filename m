Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 11E8217EEDC
	for <lists+openwrt-devel@lfdr.de>; Tue, 10 Mar 2020 03:52:37 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mARAOumV7yeKcU155G3DxPPgvejUMzTc50BPY+XIWdI=; b=BagmJXjosyYB7S
	lgpldgEzabx533snwGN7HNFpCw9sv9dhKyzBLATLMUX88fWAiZVftMzH00IIwb22t4R8fVnFiwQow
	N9NlZ+b+0wcFBPZzdoV2p8Apl8jxkk1Luinq8fwW/2TCh9zJ7E8+eit9LGRD3Eyp7GilOzBpcMmfU
	g2O4QDwuvjmEITyTRtGuef2MypMqxMrblV9AbWWNcMNiHpEQQZw+6WyV5XZ6MnSnJkfkcOnRC3GBn
	85ZTyPYZT3YX5n7SMWo0mMMS6GlO0StBB/uhjKvDvv2M4zyfsWNUgJg6Q33vasoWwZOipMKdf/3YD
	altfUZxP/e5SIR4xJzDw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jBV0C-0000Rr-J2; Tue, 10 Mar 2020 02:52:16 +0000
Received: from mail-lj1-x242.google.com ([2a00:1450:4864:20::242])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBV03-0000RE-FL
 for openwrt-devel@lists.openwrt.org; Tue, 10 Mar 2020 02:52:08 +0000
Received: by mail-lj1-x242.google.com with SMTP id r7so12379756ljp.10
 for <openwrt-devel@lists.openwrt.org>; Mon, 09 Mar 2020 19:52:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=pt+K1BRqWEDyxuWzYHX/TcctGAy1HSYyagsdgqbtDmU=;
 b=IowT7d0PIbqk3ItMglObArUBSQfyqbvC0actCyp5JfoJkYrMV2ohHW2wuANaMlmwXj
 T8JPkn4CkbEdX6bOLCL7sKb1QetfFl0TNmG2oogvkWeoGvpi7rIrIHYrsguTNM51Kcdb
 xAWbTL6AMMen+u4azbe7EJJct3SwxEbof7Efz/L+G4gRQhNZxD9Jipob6Gxh60MQuUYI
 VRvYybLGD2ffG8DmtbreiGdxR6Jn8eQRhCjAEIeY4x4WnCrUwBFRoDzkAONKeyh5kKxQ
 FyV0RsFOwJBExWa0GM3G0eIeZcUDJfkUKUxrq2UayDemTU6B0NNCYODpEvKf2gJ+erjf
 GRCQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=pt+K1BRqWEDyxuWzYHX/TcctGAy1HSYyagsdgqbtDmU=;
 b=lvWtKuv5cb0tc2i/bughLXiVV82BAFbqYPBJo+dhZbGnFtyaJQ7RXcAJRzZ4Qbk0yK
 yBqF0Roqxq46EX7LbTlyGJDymzU/psZMcJ+fsIa+GpIiE7sbXHSaaCyZ5g4pEV2MSU8I
 wB7JGRNQ7ZbdhEEdPQcGtKQmlLa1jaZb1XiDxiCX7gtCwwuGG4eLHwlyOZBjhURdQ9fz
 4SXTNqIllDzdavIlD8qNIi8yI2CFvKD+lcpRHIjjlXbrSJNO1QtsF6wRQoUfWoXnD/0u
 2evF62e9SVS8f0qftfno1y/5iHSs8YuvGoFF4K5Ty2QBfW94+thgEi+1Km+XG2Q8XWYC
 NOoQ==
X-Gm-Message-State: ANhLgQ1dd7Klu1j3PvH2EExqJ1npy6E0OtXSY/hRhULoMBd6hIY6W8fX
 PVo+FtORGFqXchepVftnkf83PJwJgyo6VhDorpsO7s2kmfM=
X-Google-Smtp-Source: ADFU+vtt219/TQ7eMBnbtxuSwxfFB1QACna5vRyphGjR//5Ki93WYguZe5SSLBEwilvJrhm32hlgjYns/jOc+H1JVVk=
X-Received: by 2002:a2e:901a:: with SMTP id h26mr11310814ljg.245.1583808724030; 
 Mon, 09 Mar 2020 19:52:04 -0700 (PDT)
MIME-Version: 1.0
References: <20200305114621.31104-1-ynezz@true.cz>
In-Reply-To: <20200305114621.31104-1-ynezz@true.cz>
From: Yousong Zhou <yszhou4tech@gmail.com>
Date: Tue, 10 Mar 2020 10:55:13 +0800
Message-ID: <CAECwjAjqDWb9KYt2OEykOqyaqPeDY_9voM90rDafr-HoEnAHmw@mail.gmail.com>
To: =?UTF-8?Q?Petr_=C5=A0tetiar?= <ynezz@true.cz>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200309_195207_538130_7A3A80E4 
X-CRM114-Status: GOOD (  10.78  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [yszhou4tech[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:242 listed in]
 [list.dnswl.org]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
Subject: Re: [OpenWrt-Devel] [PATCH] malta: fix missing watchdog dependency
 in hwmon-sch5627
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
Cc: OpenWrt Development List <openwrt-devel@lists.openwrt.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

T24gVGh1LCA1IE1hciAyMDIwIGF0IDE5OjQ2LCBQZXRyIMWgdGV0aWFyIDx5bmV6ekB0cnVlLmN6
PiB3cm90ZToKPgo+IEZpeGVzIGZvbGxvd2luZyBlcnJvciB1bmNvdmVyZWQgd2hpbGUgYnVpbGRp
bmcgbWFsdGEvYmUgb24gNS40Ogo+Cj4gIFBhY2thZ2Uga21vZC1od21vbi1zY2g1NjI3IGlzIG1p
c3NpbmcgZGVwZW5kZW5jaWVzIGZvciB0aGUgZm9sbG93aW5nIGxpYnJhcmllczoKPiAgd2F0Y2hk
b2cua28KPgo+IFRoYXQgZGVwZW5kZW5jeSB3YXMgaW50cm9kdWNlZCBpbiB1cHN0cmVhbSB2aWEg
MmQ4YzdmZjUyYzI0Cj4gKCJod21vbi9zY2g1Nnh4OiBEZXBlbmQgb24gd2F0Y2hkb2cgZm9yIHdh
dGNoZG9nIGNvcmUgZnVuY3Rpb25zIikgaW4KPiB2My41Lgo+Cj4gQ2M6IFlvdXNvbmcgWmhvdSA8
eXN6aG91NHRlY2hAZ21haWwuY29tPgo+IFNpZ25lZC1vZmYtYnk6IFBldHIgxaB0ZXRpYXIgPHlu
ZXp6QHRydWUuY3o+Cj4gLS0tCj4gIHRhcmdldC9saW51eC9tYWx0YS9jb25maWctNC4xOSB8IDEg
Kwo+ICB0YXJnZXQvbGludXgvbWFsdGEvY29uZmlnLTUuNCAgfCAxICsKPiAgMiBmaWxlcyBjaGFu
Z2VkLCAyIGluc2VydGlvbnMoKykKClRoZSBpc3N1ZSBhcHBlYXJlZCB0byBiZSBjYXVzZWQgYnkg
Q09ORklHX1dBVENIRE9HX0NPUkUgYmVpbmcgY2hhbmdlZApmcm9tIGJvb2wgdHlwZSB0byB0cmlz
dGF0ZSB0eXBlLiAgUHJldmlvdXNseSBpdCB3aWxsIGJlIHNlbGVjdGVkIHRvIGJlCmJ1aWx0aW4s
IG5vdyBhIG1vZHVsZS4KClJlZ2FyZHMsCiAgICAgICAgICAgICAgICB5b3Vzb25nCgpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpvcGVud3J0LWRldmVsIG1h
aWxpbmcgbGlzdApvcGVud3J0LWRldmVsQGxpc3RzLm9wZW53cnQub3JnCmh0dHBzOi8vbGlzdHMu
b3BlbndydC5vcmcvbWFpbG1hbi9saXN0aW5mby9vcGVud3J0LWRldmVsCg==
