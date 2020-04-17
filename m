Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0982A1AE234
	for <lists+openwrt-devel@lfdr.de>; Fri, 17 Apr 2020 18:24:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Rk+9MRpZtHIKq7o4ACbrK6Hfz6d9/HtYHW4SOvVuRi0=; b=mfLHWoQoyfzjzl
	4zrHrlmIHvhii9Pyp0UOJqwqKTaYoz8vXDLig+PijVgI49XBh137UTtTvZAz7sX83tULUpDW6zEMP
	7p3e0B6MsktDS3BFU2x6uqW6yNTrHQApjClsIeraFKp2DWsaPAhDSPSy3aVOkxcoXYh2+PXdnI07x
	8wkKqzI0MJhDFgJaW9QpopxNBvYg275T7Xk9woO0JN9Dy14fcXb1wjjiDmxvvJbVKkcfOSUibYVUV
	knJuyssg+8P9z8pBxjlhr2Ikzw3N6UhX1krl8XSaGyDp1jJrSVFCCF0npWSeniyy0vZQfgU3UwZpt
	awWeP0rlCmA8pj7CcAnA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jPTnA-00078i-I4; Fri, 17 Apr 2020 16:24:36 +0000
Received: from mail-qv1-xf41.google.com ([2607:f8b0:4864:20::f41])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jPTn3-00077t-T4
 for openwrt-devel@lists.openwrt.org; Fri, 17 Apr 2020 16:24:31 +0000
Received: by mail-qv1-xf41.google.com with SMTP id v38so1169669qvf.6
 for <openwrt-devel@lists.openwrt.org>; Fri, 17 Apr 2020 09:24:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=iETkKuKHOhIxTpL2lt/DZEwA+AhQvHXnTBD2e1kiKrE=;
 b=ainpLEOoi/hyoBH6g4xRPHN7AqyqO5MINycyCNM2di8D5KILtJxAnS6ulfzDnYjS9T
 4x9rpVxT3Xqs6FHDx8g6OsjFyc1DhfxCo0jHkVSK064RXpEZu2W7wK4UGBlsUnqn6sLZ
 DBr3x0xE2FetM2ZUQKV5CY5SaKGMb66P66Q8w16Xb8WNFN0GWHp9C17lDvJEvHiZaVL9
 NAaaBHuEAUeDs3R7LHjJaPsgbPOpay5bIDms7+An0VY/ASR2N2KFcT+qIAIA2gAcLpjF
 SE0gvlioovF6h+qxI8OkgQeylnvnhfHLru8hKz/eLWKx72BzxYwNHIce+6fDdmO34hzH
 Y1lQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=iETkKuKHOhIxTpL2lt/DZEwA+AhQvHXnTBD2e1kiKrE=;
 b=nSXtysp4lilgr8+cN6o9F2nS2OYQV3HOji5hRbovZeAi7mvjr9Iom7r79TQjwZkv1u
 qCX93yOq575460t612GnzOM+0/rYSg3BVXEkJpLF/RcyYuslde2R/jrSxyZ4uT5d0DLY
 QlJbE3gqKuoclOOGYwHxh1YPIgze2kZVkU2sRMoapKyXfv9e3Zl8GVC/fETTdYISTJDq
 wCj+u6AdPbCTaE8ReKfEyjNQ8mUriW441XZ/VzfCG5EhXrP7EP6QhAJLWQJyjfIR3Cdi
 qdtRuYsQ+RZqVl/INwt8DeLtKw2bPkA1uyF+FQdrwS1VkE7Ar8xatcbAwa7sqQs9jqNV
 Rivg==
X-Gm-Message-State: AGi0PuZlRB2yFnS+OHbRAuSVLnEVUs1YBXz025fYad72Ux4mNwPQZpMf
 mXfwzCSM0iLNufRNAahOro/iPEZarwA=
X-Google-Smtp-Source: APiQypJlRT63/mxWEjFf3Ptk5pGXd+OVkQcWe4rF3T/RKgRErOZnkKEX39fzAnTzKGFIMke7JlbYaA==
X-Received: by 2002:a0c:fdc2:: with SMTP id g2mr3374168qvs.59.1587140667849;
 Fri, 17 Apr 2020 09:24:27 -0700 (PDT)
Received: from gateway.troianet.com.br (ipv6.troianet.com.br.
 [2804:688:21:4::2])
 by smtp.gmail.com with ESMTPSA id u190sm5149189qkb.102.2020.04.17.09.24.25
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 17 Apr 2020 09:24:27 -0700 (PDT)
From: Eneas U de Queiroz <cotequeiroz@gmail.com>
To: openwrt-devel@lists.openwrt.org
Date: Fri, 17 Apr 2020 13:24:10 -0300
Message-Id: <20200417162410.28361-1-cotequeiroz@gmail.com>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200417_092429_950539_3165C977 
X-CRM114-Status: UNSURE (   6.26  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:f41 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [cotequeiroz[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: [OpenWrt-Devel] [PATCH] sdk: fix host menu config targets using
 ncurses
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
Cc: =?UTF-8?q?Petr=20=C5=A0tetiar?= <ynezz@true.cz>,
 Eneas U de Queiroz <cotequeiroz@gmail.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

RnJvbTogUGV0ciDFoHRldGlhciA8eW5lenpAdHJ1ZS5jej4KClRoaXMgYXBwbGllcyA5NjVmMzQx
YWE5ICgiYnVpbGQ6IGZpeCBob3N0IG1lbnUgY29uZmlnIHRhcmdldHMgdXNpbmcKbmN1cnNlcyIp
IHRvIHRoZSBTREsgdG9wIE1ha2VmaWxlLgoKSWYgdGhlcmUgaXMgYSBwa2ctY29uZmlnIGluIHRo
ZSBzdGFnaW5nIGRpciwgaXQgd2lsbCB0cnkgdG8gdXNlIGl0Cmluc3RlYWQgb2YgdGhlIGhvc3Qg
c3lzdGVtJ3MgcGtnLWNvbmZpZzsgdGhlbiBpdCB3aWxsIGZhaWwgdG8gZmluZCB0aGUKbmN1cnNl
cyBwYWNrYWdlLiAgTGludXgncyBkZWZhdWx0IHdpbGwgYmUgdXNlZCwgd2hpY2ggZmFpbHMgaW4g
c29tZQpjYXNlcywgc3VjaCBhcyByZWNlbnQgR2VudG9vIHN5c3RlbXMuCgpDQzogUGV0ciDFoHRl
dGlhciA8eW5lenpAdHJ1ZS5jej4KU2lnbmVkLW9mZi1ieTogRW5lYXMgVSBkZSBRdWVpcm96IDxj
b3RlcXVlaXJvekBnbWFpbC5jb20+CgpkaWZmIC0tZ2l0IGEvdGFyZ2V0L3Nkay9maWxlcy9NYWtl
ZmlsZSBiL3RhcmdldC9zZGsvZmlsZXMvTWFrZWZpbGUKaW5kZXggOGRmMTkwNGNiMC4uMmY4OWNl
MGNmOCAxMDA2NDQKLS0tIGEvdGFyZ2V0L3Nkay9maWxlcy9NYWtlZmlsZQorKysgYi90YXJnZXQv
c2RrL2ZpbGVzL01ha2VmaWxlCkBAIC0xNCw2ICsxNCw3IEBAIGV4cG9ydCBUT1BESVIgTENfQUxM
IExBTkcgU0RLCiAKIHdvcmxkOgogCitESVNUUk9fUEtHX0NPTkZJRzo9JChzaGVsbCB3aGljaCAt
YSBwa2ctY29uZmlnIHwgZ3JlcCAtRSAnXC91c3InIHwgaGVhZCAtbiAxKQogZXhwb3J0IFBBVEg6
PSQoVE9QRElSKS9zdGFnaW5nX2Rpci9ob3N0L2JpbjokKFBBVEgpCiAKIGlmbmVxICgkKE9QRU5X
UlRfQlVJTEQpLDEpCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpvcGVud3J0LWRldmVsIG1haWxpbmcgbGlzdApvcGVud3J0LWRldmVsQGxpc3RzLm9wZW53
cnQub3JnCmh0dHBzOi8vbGlzdHMub3BlbndydC5vcmcvbWFpbG1hbi9saXN0aW5mby9vcGVud3J0
LWRldmVsCg==
