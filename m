Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B69E019270A
	for <lists+openwrt-devel@lfdr.de>; Wed, 25 Mar 2020 12:24:06 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:References:Message-Id:Date:
	In-Reply-To:From:Mime-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Zjuq9SecGu1Mux/Sf6fZGMnCPbMskQ6tzSwF6ZB+ZLs=; b=b3qzH9a8Mytd+c
	cFc08jaxn58EbDKgJEBFdU6lWdEtp59BIuJNpRS6APi/DQy6RBK1iV2Dkvh3bvU1zCVieHrxc0O4d
	2Aqe5KT8GENEKfQqE9I3RnfQYDuTTQJ9rVvPBoHcRpy0JgYoToQWvBz7yMHjhg8uZgmsGDnt5Gt+w
	sE1nLD7i8QVzpaYwD5nz6h2k58LbZX/R7wLPeTvYa4Re+5OG5K2RkzDDF9ny0Y0i7PrmtyKOeCZ9v
	Mo7wc3kBbUYiWDzEoeLb/3hHMEKo7XGtTZuTGTSvRz/Q4JfyWgJXONs7252W+vndN+fXR4fkdtRQt
	ApqRF1Vm+J5atYQnck2g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jH48f-00020R-LQ; Wed, 25 Mar 2020 11:24:01 +0000
Received: from mail-pg1-x542.google.com ([2607:f8b0:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jH48X-0001zd-CL
 for openwrt-devel@lists.openwrt.org; Wed, 25 Mar 2020 11:23:54 +0000
Received: by mail-pg1-x542.google.com with SMTP id a32so1014167pga.4
 for <openwrt-devel@lists.openwrt.org>; Wed, 25 Mar 2020 04:23:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:subject:from:in-reply-to:date:cc
 :content-transfer-encoding:message-id:references:to;
 bh=OC0A/1agKmV2bmQMAgMgcRQYcZZo/TxrbdjxWaluG6w=;
 b=BiTd4//1DjgX9GWNlqyEouFUAdw/v95Bn5Ds/tXbUdoP8A9pDnpUnVGQ9o/iMU9Dpe
 CwCeMziEIVCpURsUf8nOzNr/BFuwglmuOEV4Poswt/9mDaUmJ6y4tOCd/hIV6qXk2sfk
 o8XEdsU0tkFsg3C4joaRCi8OCk4DRG6bG5S6dwifTwlc1yG5UfVMrgLzjrvTk03y3X6A
 HrzuzQ0ujh+g/HgoCezlrjq08rgNlCOAGdwqf4CPFzzS/SFIiQ8WQRHmrK9niGgzwBtv
 7TwHjqJrftxLenEeOSsu19wHVvhV6niSz3Hyq5S9t8FFarzAMZRe7pUTt0dtOaWaG3/Z
 1Rng==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:subject:from:in-reply-to:date:cc
 :content-transfer-encoding:message-id:references:to;
 bh=OC0A/1agKmV2bmQMAgMgcRQYcZZo/TxrbdjxWaluG6w=;
 b=H7/WNsSPbCcscDu0ZlN2lzzGdnLUHnZGuvCJbdbc0QMRJW6qTJ9UdCHxCFwu1mTVvO
 j3wdxCRL729jWeGzz+L7s0dTiFwL9yBlBLpSLYyw8ZYMFCtRZS22xheSpTzL4aKZaMJM
 F6YFjvDgaYDicjCbeGN1PlcCxqxwkjnhdhWwtfoQxGDXlrwaZpXA2TW2ViEHqH5XVeQN
 XMbuXtsyI/sv0qKAtNVM5r/wvpYaed6uBfcKY3v0tLxY7o/v7OSv+gX5BW92TAkhlteE
 XRaitMt1GfPhJGVD5U6wZ+zNZuh8O5fCxZuWD8crJnPJrDpE3oN1yR9MlXjLcNZDJ8H4
 yACQ==
X-Gm-Message-State: ANhLgQ2+Pq9yyO57x04P+dAOTWqaqyP+tDQqhnGoYLNkSG8wemlrz3gs
 Fu2m6JuV6ZkzAWmCWlyVu6gbkBlHquQ=
X-Google-Smtp-Source: ADFU+vtFG2Lgly4Nlvhtnf0WtdMeq6WX69M5QigcSQ6VgwMHkmvINOrbRQOcK5MFGgIes7VXFOhqzg==
X-Received: by 2002:aa7:9481:: with SMTP id z1mr2830316pfk.185.1585135432558; 
 Wed, 25 Mar 2020 04:23:52 -0700 (PDT)
Received: from [192.168.0.139] (astound-69-42-19-227.ca.astound.net.
 [69.42.19.227])
 by smtp.gmail.com with ESMTPSA id c190sm18053715pfa.66.2020.03.25.04.23.51
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 25 Mar 2020 04:23:52 -0700 (PDT)
Mime-Version: 1.0 (1.0)
From: Rosen Penev <rosenp@gmail.com>
X-Mailer: iPhone Mail (16G161)
In-Reply-To: <20200325082706.GC43730@meh.true.cz>
Date: Wed, 25 Mar 2020 04:23:50 -0700
Message-Id: <61EA1A90-6A32-4E39-92B7-1A5EBA240764@gmail.com>
References: <20200325082706.GC43730@meh.true.cz>
To: =?utf-8?Q?Petr_=C5=A0tetiar?= <ynezz@true.cz>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200325_042353_418281_DD3FEAF6 
X-CRM114-Status: UNSURE (   8.07  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:542 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [rosenp[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: Re: [OpenWrt-Devel] [PATCH] netifd: fix compilation with musl 1.2.0
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

CgpTZW50IGZyb20gbXkgaVBob25lCgo+IE9uIE1hciAyNSwgMjAyMCwgYXQgMToyNyBBTSwgUGV0
ciDFoHRldGlhciA8eW5lenpAdHJ1ZS5jej4gd3JvdGU6Cj4gCj4gUm9zZW4gUGVuZXYgPHJvc2Vu
cEBnbWFpbC5jb20+IFsyMDIwLTAzLTI0IDIyOjU2OjE5XToKPiAKPiBIaSwKPiAKPj4gLS0tIGEv
c3lzdGVtLWxpbnV4LmMKPj4gKysrIGIvc3lzdGVtLWxpbnV4LmMKPj4gQEAgLTU5LDYgKzU5LDEw
IEBACj4+ICNkZWZpbmUgSUZBX0ZMQUdTIChJRkFfTVVMVElDQVNUICsgMSkKPj4gI2VuZGlmCj4+
IAo+PiArI2lmbmRlZiBfX05SX2Nsb2NrX2dldHRpbWUKPj4gKyNkZWZpbmUgX19OUl9jbG9ja19n
ZXR0aW1lIF9fTlJfY2xvY2tfZ2V0dGltZTY0Cj4+ICsjZW5kaWYKPiAKPiBjb3VsZCB5b3UgZml4
IGl0IGJ5IHJlbW92aW5nIHRoYXQgcHJvYmFibHkgbm93IG9ic29sZXRlIHdvcmthcm91bmQgYnkK
PiByZXBsYWNpbmcgdGhhdCBzeXNjYWxsKCkgd2l0aCBkaXJlY3QgY2xvY2tfZ2V0dGltZSgpPyBU
aGFua3MhClRoZSByZWFzb25pbmcgZ2l2ZW4gaW4gb25lIG9mIHRoZXNlIHByb2plY3RzIGlzIHRv
IGF2b2lkIGEgZGVwZW5kZW5jeSBvbiBsaWJydC4gQnV0IGdpdmVuIHRoYXQgaXTigJlzIG9ubHkg
YSBnbGliYyBwcm9ibGVtLCB3aHkgbm90Lgo+IAo+IC0tIHluZXp6CgpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpvcGVud3J0LWRldmVsIG1haWxpbmcgbGlz
dApvcGVud3J0LWRldmVsQGxpc3RzLm9wZW53cnQub3JnCmh0dHBzOi8vbGlzdHMub3BlbndydC5v
cmcvbWFpbG1hbi9saXN0aW5mby9vcGVud3J0LWRldmVsCg==
