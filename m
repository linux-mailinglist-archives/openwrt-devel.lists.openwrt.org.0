Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1267F1F0F6B
	for <lists+openwrt-devel@lfdr.de>; Sun,  7 Jun 2020 22:04:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:In-Reply-To:References:
	Message-Id:Date:Mime-Version:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YIUgCTCwl+zMsvCjOHNTLuWFM0zD1zrY7dto9UVgqjM=; b=GLZ3M3DWJGD4vc
	2mxIjvnQl3idWIatCBn7c6cGSLuAERzog7Bv0NyDnkTN6Ezz9EmGGAWT4C0PLjebCbhD35am/QXVH
	soUAmlebDdiK3vUEOlOSnc9fSOHnlBywwYD7f3FyMprUw6FYCCVpNlHNpBHuMpPhBvefy5OC06iEi
	anmchuJuJp3qBfCgrJoOCi3U4ogNe+GfAYFSWqESOfCmGKAwb+/SexJqRy1LHgfoSbhQNuov4UEsY
	V0reU3zPxwVDXaCtS5mEXFOcYPlKRuOeQjWGJTM29lFDMg7RbqXOWF8jbc7XPj124uXs7R+DpvT/n
	olTIF8XnOCKs9NAOFAmA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ji1WW-0005NH-Ef; Sun, 07 Jun 2020 20:04:04 +0000
Received: from mail-pg1-x52e.google.com ([2607:f8b0:4864:20::52e])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ji1WQ-0005MV-2x
 for openwrt-devel@lists.openwrt.org; Sun, 07 Jun 2020 20:03:59 +0000
Received: by mail-pg1-x52e.google.com with SMTP id t7so7787557pgt.3
 for <openwrt-devel@lists.openwrt.org>; Sun, 07 Jun 2020 13:03:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=content-transfer-encoding:from:mime-version:subject:date:message-id
 :references:cc:in-reply-to:to;
 bh=TWNQlqLYAdJ+D1HaZmZjf/sHXJJVjGb/cKlwaVAjNrA=;
 b=ZSV9EoE+FI1HaJN77ruuC5qrgoiwNyor8PLP2Co81dO6KbZt+Ev9o/FRU2nGeBEEDt
 2Q8ncXSx2Vb0pSkgZRcth7yQH/TPpDHCv4JLt6wemLRlKQDxExCFs/vPNVgZqcB8KQeZ
 cPo6bpHdvNHEiEBzt9DAXgQcDbiL7/5O6jivb53snpd982zSPPHj9fYSWo0/xKkI3YYG
 BVbnKnZBXkolNvqLKcA2+ekzNVuJ74PSu9ifXA8O/Dro2b3rAC9yXgIFXBYk7/wUoYOl
 FalaTQe5dMfnqILW8lyJCy4bhihca0bQKQ1iY9jOn08uVP3pgptFVhUG3Krbe8R5m9ea
 hc/A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:content-transfer-encoding:from:mime-version
 :subject:date:message-id:references:cc:in-reply-to:to;
 bh=TWNQlqLYAdJ+D1HaZmZjf/sHXJJVjGb/cKlwaVAjNrA=;
 b=oyU1POnCzBhpfE+9FK3Flpvdxx4IVJm+jDWUVBNCYeWBA8ojO1Qg5peCM4KupfxWeR
 P2RaOoPZS1kPXX0y/tVkj9QoCquJ2/hHw52tk/0y+YEovxCm0HOtkQIDFAE2FguBDohN
 bveB7AV0F6nK5frlHaEa/mXL2rc4PytnoS+ZGGNy0GDmT8eHhlxEJLtxzQYrHVZDC0uD
 FWSEkwTYafcj4OpG630LAe6mxhSqCpbjrlc6NFhT9Qgznn5Xl/QHBEzgwTCnIzul/94H
 QakwLqF6RU/mIOMCuZO7K2M7wbDCmbG/zfYdRbfxQpMjO7U8WnqEdbSh3bDBfyJxoIg1
 5zkg==
X-Gm-Message-State: AOAM532/7vzauQBNUexYYipcYPzcGDFHBV9i5RCNJ0szIY18xbNwQ9CY
 DhoonnsWGv6O+19d6pmSblp6FZ71fpY=
X-Google-Smtp-Source: ABdhPJy3/2vG/GWuWuvhsKNiddI6ZRSH5xs6fqDTqvvM5G4p88+D+phcI/SYHHHI97cFD7kbh8Zmrw==
X-Received: by 2002:a63:8c51:: with SMTP id q17mr16508059pgn.1.1591560234677; 
 Sun, 07 Jun 2020 13:03:54 -0700 (PDT)
Received: from ?IPv6:2002:4c0e:6de8:0:8cfb:eb1e:43a8:6ce?
 ([2002:4c0e:6de8:0:8cfb:eb1e:43a8:6ce])
 by smtp.gmail.com with ESMTPSA id mp15sm13766583pjb.45.2020.06.07.13.03.53
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sun, 07 Jun 2020 13:03:54 -0700 (PDT)
From: Rosen Penev <rosenp@gmail.com>
Mime-Version: 1.0 (1.0)
Date: Sun, 7 Jun 2020 13:03:52 -0700
Message-Id: <9C5049CD-C89B-441C-9AEB-6E7D0F94EC85@gmail.com>
References: <c784f5cc-6fca-8c15-1094-0eb70eb352d9@systemli.org>
In-Reply-To: <c784f5cc-6fca-8c15-1094-0eb70eb352d9@systemli.org>
To: Nick <vincent@systemli.org>
X-Mailer: iPhone Mail (17F75)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200607_130358_128099_42E83924 
X-CRM114-Status: UNSURE (   7.25  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:52e listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [rosenp[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
Subject: Re: [OpenWrt-Devel] olsrd: not compiling with gcc 9
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

Cgo+IExlIDcganVpbiAyMDIwIMOgIDE6MDAgUE0sIE5pY2sgPHZpbmNlbnRAc3lzdGVtbGkub3Jn
PiBhIMOpY3JpdCA6Cj4gCj4g77u/SSBjYW4gbm90IGNvbXBpbGUgb2xzcmQgZGFlbW9uIHdpdGgg
Z2NjOS4KPj4gI2RlZmluZSBpc05hTih4KSAoeCAhPSB4KQo+PiAuLi4KPj4gaWYgKCFpc05hTihn
cHNkYXRhLT5maXgudGltZSkpIHsKPiBIZXJlIGZpeC50aW1lIGlzIGEgc3RydWN0IHRpbWVzcGVj
Lgo+IFRoZSBjYWxsIGlzIGp1c3Qgd3JvbmcsIG9yPyBXaHkgc2hvdWxkIEkgY2hlY2sgYSBzdHJ1
Y3QgZm9yIGEgdmFsaWQgZmxvYXQ/ClRoaXMgYnJva2Ugd2hlbiBncHN1dGlscyBnb3QgdXBkYXRl
ZC4gQVBJIGNoYW5nZSB3aXRoIGxpYmdwcy4KPiAKPiBfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwo+IG9wZW53cnQtZGV2ZWwgbWFpbGluZyBsaXN0Cj4gb3Bl
bndydC1kZXZlbEBsaXN0cy5vcGVud3J0Lm9yZwo+IGh0dHBzOi8vbGlzdHMub3BlbndydC5vcmcv
bWFpbG1hbi9saXN0aW5mby9vcGVud3J0LWRldmVsCgpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpvcGVud3J0LWRldmVsIG1haWxpbmcgbGlzdApvcGVud3J0
LWRldmVsQGxpc3RzLm9wZW53cnQub3JnCmh0dHBzOi8vbGlzdHMub3BlbndydC5vcmcvbWFpbG1h
bi9saXN0aW5mby9vcGVud3J0LWRldmVsCg==
