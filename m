Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AE11F1F9EDD
	for <lists+openwrt-devel@lfdr.de>; Mon, 15 Jun 2020 19:52:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-ID:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=0bhVvGkhY65u8FKMib6wjQOz0fYPonYs6t/rKggd1p8=; b=AkryDKZnB/m6Pe
	opdV67R1KVfY8byuPmx6z+56hWDH7jVxnCIk4FcweftugLtfGKdkOoVSZKwVaxS7vta5IaIlr0URL
	TGK/Ifg5qasHtBkDXwrEyRlLYuSHb6H1xLHjB14258TDVXvBFSOYGZpIWKu0AGD5lAl/kfizDD4GN
	Yrlp2ju65mJ2wOW4BQxMJwoouhD0nNrUvAGGHU6ud8rMEahzdPr3DMCsMpF4GD6Ra3FHJeFj1+VNy
	GhkyWLTLjufwkwI9jhy7k+i3alxaHhkFDhIo26WVPV/cC1zL/5IKl9btGIr+Ov+oEfNNygxX3lNPv
	FSHp0yEsaPwJ1WxdfOnQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jktHE-0005Sl-Vp; Mon, 15 Jun 2020 17:52:08 +0000
Received: from mail-wm1-x32c.google.com ([2a00:1450:4864:20::32c])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jktH4-0005S5-OK
 for openwrt-devel@lists.openwrt.org; Mon, 15 Jun 2020 17:51:59 +0000
Received: by mail-wm1-x32c.google.com with SMTP id f185so444547wmf.3
 for <openwrt-devel@lists.openwrt.org>; Mon, 15 Jun 2020 10:51:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=D7rM+FEpZjwrx0GNX4M46yjlpBDazJti82387IFBLyc=;
 b=lOuUEHaNi+bnJW7qyVOfkLqgrfgZg3hX1K0hAe0ilfTcxSEJlEXpqmu/jWmp4x1Ntb
 YatmkPdUcpF7nWcnA9O/L74r9J8siMAwTET41Vb9gCLoUXCkx5bhtzLT0YekhbVqG3Zw
 SCzro7C9iMfq81U964gDUXvrspJC68wDD1P5+o+5G5ez/Qe0bURYlr71jiTTkwjb0tYb
 oS2S95MT3qDfDbhavUGWum2K/RcCkkL1qRhufCjT418se9fjfSpOSHvSW42gBHl2uiYY
 mrRSEsPla9+hfTdiPK9gt5g2mhFHRXXhJ3m8fk097MnluylKgSsjYHJVr20cvp2HixZQ
 LCpQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=D7rM+FEpZjwrx0GNX4M46yjlpBDazJti82387IFBLyc=;
 b=KZUd/JoU/8JfDT9o17BWHIcNyGDkLhYXJxB+V+3TmZOCRAyu/foDd0ifTVj1+eIxGQ
 JK62rl9ETKwRtAL8SX5e86/8KKQM+1sVniLsMjObhK6eDBvsVHXQlCvjyWX+nH/ch54Q
 K19UhX5jYaKZ1WzzX1bRl4xU+I8l2c1Non+VHEZwDsOMSUb3ThA5+Glu6S2yS8YM7dUb
 DwhhE/PhjoSEnzQ6y8OZI6eHRepgq5WXTa4fd99wnH68n24ixGVvMmvjNxrO6thiKSZp
 itW3yF2mtBFuhO7HeWrNc1bUG/p55ZKwzSksysIwWasTb2mHpSHL5sBLJWCpp3TdF73Q
 skWA==
X-Gm-Message-State: AOAM530FeGDi0c+lenq49RzEuGXiBMDH7gDXDkT2AfHTXtdY1Fvff5x0
 b/oimflG+hJV9EEdP6452zY1INwn
X-Google-Smtp-Source: ABdhPJxig5+phLu1rz5MZDwG+ivOm8tX/5/b9otBqrMlL8FQ8AiCN5cQNuS+bILdwgxinhakm3jGpw==
X-Received: by 2002:a1c:2643:: with SMTP id m64mr489114wmm.158.1592243516086; 
 Mon, 15 Jun 2020 10:51:56 -0700 (PDT)
Received: from tool.localnet ([213.177.199.127])
 by smtp.googlemail.com with ESMTPSA id v66sm424148wme.13.2020.06.15.10.51.54
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 15 Jun 2020 10:51:54 -0700 (PDT)
From: Daniel =?ISO-8859-1?Q?Gonz=E1lez?= Cabanelas <dgcbueu@gmail.com>
To: openwrt-devel@lists.openwrt.org
Date: Mon, 15 Jun 2020 19:51:28 +0200
Message-ID: <2235597.0Tboij76b4@tool>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200615_105158_813295_5EFA8E3C 
X-CRM114-Status: UNSURE (   7.22  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:32c listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [dgcbueu[at]gmail.com]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: [OpenWrt-Devel] [PATCH] bcm63xx: a226m-fwb: fix linux partition
 offset
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
Cc: noltari@gmail.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

VGhlIFBpcmVsbGkgQTIyNk0tRldCIGhhcyBhIHdyb25nIGxpbnV4IHBhcnRpdGlvbiBvZmZzZXQs
IHByb2JhYmx5IGNhdXNlZApieSBhIGNvcHktcGFzdGUgZXJyb3IuIEFzIG9mIHJlc3VsdCBvZiB0
aGlzLCBPcGVuV3J0IGlzIGN1cnJlbnRseSBicm9rZW4KaW4gdGhpcyB1bml0LgoKRml4IGl0LgoK
U2lnbmVkLW9mZi1ieTogRGFuaWVsIEdvbnrDoWxleiBDYWJhbmVsYXMgPGRnY2J1ZXVAZ21haWwu
Y29tPgotLS0KIHRhcmdldC9saW51eC9iY202M3h4L2R0cy9iY202MzU4LXBpcmVsbGktYTIyNm0t
ZndiLmR0cyB8IDIgKy0KIDEgZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlvbigrKSwgMSBkZWxldGlv
bigtKQoKZGlmZiAtLWdpdCBhL3RhcmdldC9saW51eC9iY202M3h4L2R0cy9iY202MzU4LXBpcmVs
bGktYTIyNm0tZndiLmR0cyBiL3RhcmdldC9saW51eC9iY202M3h4L2R0cy9iY202MzU4LXBpcmVs
bGktYTIyNm0tZndiLmR0cwppbmRleCBkMGIxZTU1MjEzLi5iNDc3ZmI0MGRlIDEwMDY0NAotLS0g
YS90YXJnZXQvbGludXgvYmNtNjN4eC9kdHMvYmNtNjM1OC1waXJlbGxpLWEyMjZtLWZ3Yi5kdHMK
KysrIGIvdGFyZ2V0L2xpbnV4L2JjbTYzeHgvZHRzL2JjbTYzNTgtcGlyZWxsaS1hMjI2bS1md2Iu
ZHRzCkBAIC0xMDksNyArMTA5LDcgQEAKIAogCQlsaW51eEAxMDAwMCB7CiAJCQlsYWJlbCA9ICJs
aW51eCI7Ci0JCQlyZWcgPSA8MHgwMTAwMDAgMHhmYzAwMDA+OworCQkJcmVnID0gPDB4MDIwMDAw
IDB4ZmMwMDAwPjsKIAkJCWNvbXBhdGlibGUgPSAiYnJjbSxiY205NjN4eC1pbWFnZXRhZyI7CiAJ
CX07CiAKLS0gCjIuMjcuMAoKCgoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCm9wZW53cnQtZGV2ZWwgbWFpbGluZyBsaXN0Cm9wZW53cnQtZGV2ZWxAbGlz
dHMub3BlbndydC5vcmcKaHR0cHM6Ly9saXN0cy5vcGVud3J0Lm9yZy9tYWlsbWFuL2xpc3RpbmZv
L29wZW53cnQtZGV2ZWwK
