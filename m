Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 37A861CAE2
	for <lists+openwrt-devel@lfdr.de>; Tue, 14 May 2019 16:51:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:To:Message-ID:Date:From:MIME-Version:Reply-To:Cc:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=BUNwT9unH5sZZdt1atM5b1humRO1YfETUmQpdYCO0z4=; b=oMZ
	6oyMuWJiBR4vOPy7NY+YgB2Qy7xHJuMEuwVF6DklLU5OENblHX8nUZEX7T+CZ+PTOFBHbYS+RmF3w
	X/bnehYVGq+5V1KKyQX5Yr6Z0y2xkP+uyni2sJJZrwyNScm/lkUuRFcD261O5xIeZ9YpCvpv0jnpe
	MNa4yg0ZY4a9w9YJkmTGWPySEI3migZUSKLC1mpIl51a1OVb6IwdDEoxJxnFFzV4ybJRCez3Omexr
	g0iGVJehQMh/n2ErhULDuSitK3bkAKyVWEN4F6L0QE1Z9bZfvtGQOEp00SKPEYR9f9qLvqxGvP6JM
	NWhoaMYo2vtJ8dfJkttm9yHTuJ+NiPA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQYlf-0006F3-1A; Tue, 14 May 2019 14:50:59 +0000
Received: from mail-lf1-x143.google.com ([2a00:1450:4864:20::143])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQYlY-0006Ek-EL
 for openwrt-devel@lists.openwrt.org; Tue, 14 May 2019 14:50:53 +0000
Received: by mail-lf1-x143.google.com with SMTP id d8so12098302lfb.8
 for <openwrt-devel@lists.openwrt.org>; Tue, 14 May 2019 07:50:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to;
 bh=x/We34DLWKpGKiFybMc+OKeykLOYqfCplRgFpaNR4VQ=;
 b=Fjr03EYRWfTvLV7tmnf7eRF/S2kkfhYXRZg6+JLfjRrbCwY+OHHHeYCoPgBWUpZDh9
 +JLPfiEpMB+gEPhCFmLnUEXD+zL7T+myOot3cn195XpBGenHB32EpujeBRL3aK7pU6uj
 2u+YQZDbeFqmcI4IgqQPWE8iG/wGuiuLZ9vPquL1ve7h3LfmjJj7bm/xHFjnS6XXmabd
 nN8MYfUBE4PDuLWUFZqcPDs5KM0A7P4EU4jduMGUKo9TXE2dsZPr1WsGA1WONM7DYp5Q
 xYID/ZZu8A21uZbehh+gqKRminf4I86pP65cL3j8oDYXobzsFUwtfCVtnF0ezaMvtRFy
 XjJg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=x/We34DLWKpGKiFybMc+OKeykLOYqfCplRgFpaNR4VQ=;
 b=XZ7AgfiZrK+uri7RkaJixfVKwh7XcB/zv6e/QR3F93I1rbYH6f+NNXTy31ulwmS04q
 yIbfEbOS0MRUKo52ORDvDu5AMU47vxoSSwh9l9GJUCOcFUyvPJVp+Ll/GqWah4XEsRZk
 JNpCYj6cvUbLxNjyQZ9MbDfuzV2/f0lrBJ8JhTo1YalSKWQVHVE0gwL0DvHRsIcV/ejn
 zN8oPP61NAcx74omuUxVw49UIR8cH/J2pCNslnmne3NeAtU3njskWPG48Nwczpoug0Cv
 bscxYjXgpSdcYS+DiX+P5LNNfPX3jYpPEEFiLp6m/9aTcqF+nG5NqDUaDw6lsKRdK8ig
 w+Gw==
X-Gm-Message-State: APjAAAXQWul3gR+ns//PuGTUoCNGONev5vhaFjByFMY2DFxXmshWl6Kx
 bEP6th2bizJEDvLc5rTLmgsif1w7HZeTn1/FE2NaBFCRpsA=
X-Google-Smtp-Source: APXvYqwKT+BR2B11O91lsI1MWmt2pFy5JJxoE2FOGj978lRCwdSJL9sZGDjB3TnXyf7RShD811HvKrdF0PJc6Ch83Ro=
X-Received: by 2002:ac2:5214:: with SMTP id a20mr7352266lfl.169.1557845450064; 
 Tue, 14 May 2019 07:50:50 -0700 (PDT)
MIME-Version: 1.0
From: raymond campbell <raymondcampbell323@gmail.com>
Date: Tue, 14 May 2019 15:50:37 +0100
Message-ID: <CAJU_PF4Lac+GEpvFN_fAmbaiq7+d6j+cSrkApT_L-4PMmf_CJA@mail.gmail.com>
To: jefferguimaraes@gmail.com, rvmoura.96@gmail.com, carlos.empre@yahoo.com.br,
 openwrt-devel@lists.openwrt.org, hicham.chraibi@gmail.com, 
 daniellebezerra.adv@gmail.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190514_075052_531858_4EB5A260 
X-CRM114-Status: UNSURE (   0.48  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:143 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (raymondcampbell323[at]gmail.com)
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (raymondcampbell323[at]gmail.com)
 0.0 HTML_MESSAGE           BODY: HTML included in message
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
Subject: [OpenWrt-Devel] hello
X-BeenThere: openwrt-devel@lists.openwrt.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <openwrt-devel.lists.openwrt.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/openwrt-devel>, 
 <mailto:openwrt-devel-request@lists.openwrt.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/openwrt-devel/>
List-Post: <mailto:openwrt-devel@lists.openwrt.org>
List-Help: <mailto:openwrt-devel-request@lists.openwrt.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/openwrt-devel>,
 <mailto:openwrt-devel-request@lists.openwrt.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============7704118053535535654=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

--===============7704118053535535654==
Content-Type: multipart/alternative; boundary="000000000000aa885e0588da2843"

--000000000000aa885e0588da2843
Content-Type: text/plain; charset="UTF-8"

*Good Day *

*I have been waiting for your responds since after my mail to
you,,...kindly reply me as soon as possible,,,,,i am waiting to hear from
you'''*

--000000000000aa885e0588da2843
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><b>Good Day=C2=A0</b><div><b><br></b></div><div><b>I have =
been waiting for your responds since after my mail to you,,...kindly reply =
me as soon as possible,,,,,i am waiting to hear from you&#39;&#39;&#39;</b>=
</div></div>

--000000000000aa885e0588da2843--


--===============7704118053535535654==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============7704118053535535654==--

