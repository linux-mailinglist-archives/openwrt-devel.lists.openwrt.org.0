Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F03419E3F8
	for <lists+openwrt-devel@lfdr.de>; Sat,  4 Apr 2020 10:50:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:
	References:Message-ID:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qRSUwINdxHiiLVnUBvjOH6fJbuBf8E9FmRtIDQimqWU=; b=L/LGkE2BsJbHs+
	95IwiMXLOG6ysy8RzqhWT6PwhOL2uHeMcJyYBKU0X4Qu9zMrO6mr7kbCAdd4gkxEhdkaW5eN0uBr4
	CLy8HEHoa77PJzyxju+CFhEQB/I3s6NEMVZvtr49mGw5VyEh1FyVoeovtUS8oUPZ3dn4Z1hfHOm0z
	Pv8fXVJIzfd5pSPsl4DrdYWlv+VfMvRbd0/sow0+xQrBUAt5QJEBry+Obkh0vpbmi2bQtKeK8E3Ln
	RXm5GvXxhu6uyBe2qWroKQ3qA12YSK4d+/rScMIlfWE8hHhfZeQ88x9a6C0zEgWjA3JWeMrD89xUM
	nczL665iAQJxcVp2GgiQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jKeVp-0007hT-6U; Sat, 04 Apr 2020 08:50:45 +0000
Received: from mail-lf1-x144.google.com ([2a00:1450:4864:20::144])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jKeVj-0007h1-7W
 for openwrt-devel@lists.openwrt.org; Sat, 04 Apr 2020 08:50:40 +0000
Received: by mail-lf1-x144.google.com with SMTP id h6so7787493lfp.6
 for <openwrt-devel@lists.openwrt.org>; Sat, 04 Apr 2020 01:50:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to
 :user-agent; bh=V+yKlvHwq4Fn96McCzm/Ujgi9zsmpDTjwfNSGkKKrQg=;
 b=Rrw0EVkvHORgFT3kfyHF3lkECeHepq3q+kKZY8THFYriLYIIe9ZgBpqVRSj+5G9p9a
 n6TDElriXbEVcZ3QOFGhkh4KZzS3xAY/remewtCOrob9K+IK6MG60/Z2b+kaBGrMMIwc
 7rJpgmdEt1nLYPg8CoXclHfiNP0f+eUa4Zg89UPFiERvQfdRHwRUil/EfTIx8LMSjLFf
 oV3w+6E3tfnELTic7z8DwUAD+VYrrAc+QMlOWNKZKdM0OZRX+aW2xXe5SQzTUt+P85Lr
 YIyxSRgewjMlq3uh1lplMXVvMkClREpI0TRKcGFrd7wQpfclOh8JJBI8pKGFZsvfc2r8
 QJfA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to:user-agent;
 bh=V+yKlvHwq4Fn96McCzm/Ujgi9zsmpDTjwfNSGkKKrQg=;
 b=B8HaY8Ehfimh3VFi8NO5SyPac2cUyESYi5XOZrpnp0EuKIl6dsUltPHcV0b2wK9h8I
 WetZA8nP6h/aHgQgs/iqnKj7k5+ewHk1t5iKFApvFWnQtGx+WdctE+mkOQTDtvWBB5IJ
 ao0PdO+2L4Uj7KoSieUrh/U/hV2uP/g1jb64CcZcvrIbH20i+yK/vnb5MrRD7ZonbrZ5
 R6gZnxoFm6ivQyKpmPbx1q9PwjTQiyphVtPdPQ9OtdwarHSbhjmVbmiTzu5v1ChPVvEc
 G+bhRIpv58RsLGhCdaQmWR4xL+cd+oHsJO9p5/rUZhD+HVoJB3nVuSb/8S5g5GZ5RNYn
 8sQg==
X-Gm-Message-State: AGi0PuaeVpDMmr9MhlS6KsNbMfqMqnttz5/w3BBi44H4/F+bFcCZ8S5B
 LK2ucF7eN0lHvMN6j+lo34I=
X-Google-Smtp-Source: APiQypLAlFj3I6D9SSksCwVkCFhnXQ03NiSCpy9YVYkRPcIarHwsA3C6RnMpqEkBgLahab0YkQERzA==
X-Received: by 2002:a19:7010:: with SMTP id h16mr7846668lfc.111.1585990236522; 
 Sat, 04 Apr 2020 01:50:36 -0700 (PDT)
Received: from home.paul.comp (paulfertser.info.
 [2001:470:26:54b:226:9eff:fe70:80c2])
 by smtp.gmail.com with ESMTPSA id y23sm6272654ljh.42.2020.04.04.01.50.35
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 04 Apr 2020 01:50:35 -0700 (PDT)
Received: from home.paul.comp (home.paul.comp [IPv6:0:0:0:0:0:0:0:1])
 by home.paul.comp (8.15.2/8.15.2/Debian-14~deb10u1) with ESMTP id
 0348oWvh003916; Sat, 4 Apr 2020 11:50:33 +0300
Received: (from paul@localhost)
 by home.paul.comp (8.15.2/8.15.2/Submit) id 0348oW1r003915;
 Sat, 4 Apr 2020 11:50:32 +0300
Date: Sat, 4 Apr 2020 11:50:31 +0300
From: Paul Fertser <fercerpav@gmail.com>
To: Kevin Darbyshire-Bryant <ldir@darbyshire-bryant.me.uk>
Message-ID: <20200404085031.GG23797@home.paul.comp>
References: <20200404082734.79321-1-ldir@darbyshire-bryant.me.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200404082734.79321-1-ldir@darbyshire-bryant.me.uk>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200404_015039_293259_CEBFA2E9 
X-CRM114-Status: UNSURE (   6.32  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:144 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [fercerpav[at]gmail.com]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: Re: [OpenWrt-Devel] [PATCH v1] umdns: suppress
 address-of-packed-member warning
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

SGVsbG8sCgpPbiBTYXQsIEFwciAwNCwgMjAyMCBhdCAwOToyNzozNEFNICswMTAwLCBLZXZpbiBE
YXJieXNoaXJlLUJyeWFudCB3cm90ZToKPiBkbnMuYzoyNjE6MjogZXJyb3I6IGNvbnZlcnRpbmcg
YSBwYWNrZWQg4oCYc3RydWN0IGRuc19xdWVzdGlvbuKAmSBwb2ludGVyCj4gKGFsaWdubWVudCAx
KSB0byBhIOKAmHVpbnQxNl904oCZIHtha2Eg4oCYc2hvcnQgdW5zaWduZWQgaW504oCZfSBwb2lu
dGVyCj4gKGFsaWdubWVudCAyKSBtYXkgcmVzdWx0IGluIGFuIHVuYWxpZ25lZCBwb2ludGVyIHZh
bHVlCj4gWy1XZXJyb3I9YWRkcmVzcy1vZi1wYWNrZWQtbWVtYmVyXQo+IAo+IDI2MSB8ICB1aW50
MTZfdCAqc3dhcCA9ICh1aW50MTZfdCAqKSBxOwo+IAo+IFdvcmsgYXJvdW5kIHdoYXQgSSB0aGlu
ayBpcyBhIGZhbHNlIHBvc2l0aXZlIGJ5IHR1cm5pbmcgdGhlIHdhcm5pbmcgb2ZmLgoKSXQgc2Vl
bXMgdGhhdCBwYWNrZWQgc3RydWN0dXJlcyBoYXZlIG5vIGFsaWdubWVudCBndWFyYW50ZWVzIGF0
IGFsbAooYmV5b25kIHRoZSBzaXplIHRoZXkncmUgcGFja2VkIGZvciksIHNvIGV2ZW4gdGhlIGZp
cnN0IG1lbWJlciBjYW4ndApiZSB1c2VkIGxpa2UgdGhhdC4gU28gdGhlIHdhcm5pbmcgbG9va3Mg
bGVnaXQ/CgotLSAKQmUgZnJlZSwgdXNlIGZyZWUgKGh0dHA6Ly93d3cuZ251Lm9yZy9waGlsb3Nv
cGh5L2ZyZWUtc3cuaHRtbCkgc29mdHdhcmUhCm1haWx0bzpmZXJjZXJwYXZAZ21haWwuY29tCgpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpvcGVud3J0LWRl
dmVsIG1haWxpbmcgbGlzdApvcGVud3J0LWRldmVsQGxpc3RzLm9wZW53cnQub3JnCmh0dHBzOi8v
bGlzdHMub3BlbndydC5vcmcvbWFpbG1hbi9saXN0aW5mby9vcGVud3J0LWRldmVsCg==
