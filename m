Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C33C6F885A
	for <lists+openwrt-devel@lfdr.de>; Tue, 12 Nov 2019 07:03:17 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Subject:
	List-Help:Reply-To:List-Archive:List-Unsubscribe:List-Subscribe:Cc:From:
	List-Post:List-Id:Message-ID:MIME-Version:To:Date:In-Reply-To:References:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=EGCsq+omGknaK6XUMqbf+X/dLMZOZ3g9DW8jel+it4s=; b=XSIy2qZloZpSA43IJQn/Lusmk
	p5vOnEg/ZIdUkAlkUX59W+DAgKRPBFLgapposgnZtaOPsfAQmXkNTYJ+2dp4MRxWSPIBXY6/nQbPf
	KQ90bsZLcJbUhn+4urF7ieJevdJxdPT9md5mBjvm1oe45hg+anUEL+h/QjckfSLU8ZNu6OlGLC9OY
	GNbeupppb1JeUdFhPKRXkXBf+WaRr5f9gNobm5EUAoQsiqLEtxyLI5UY5lNeHAxQw2NMrmEywb40v
	ZFQWhR9CCMH1y2vbuzyTow3P0av7aP2iIp2ShSoQeeIChM6cEnY+U6WOtjrXvr8XRJleJf78Pf1+t
	vWF6qm36A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iUPGV-0001L7-TX; Tue, 12 Nov 2019 06:02:59 +0000
References: <20191111205558.2403-1-ynezz@true.cz>
In-Reply-To: <20191111205558.2403-1-ynezz@true.cz>
Date: Tue, 12 Nov 2019 00:02:37 -0600
To: =?UTF-8?Q?Petr_=C5=A0tetiar?= <ynezz@true.cz>
MIME-Version: 1.0
Message-ID: <mailman.10519.1573538574.2486.openwrt-devel@lists.openwrt.org>
List-Id: <openwrt-devel.lists.openwrt.org>
List-Post: <mailto:openwrt-devel@lists.openwrt.org>
From: Thomas Albers via openwrt-devel <openwrt-devel@lists.openwrt.org>
Precedence: list
Cc: Stijn Tintel <stijn@linux-ipv6.be>, openwrt-devel@lists.openwrt.org
X-Mailman-Version: 2.1.29
X-BeenThere: openwrt-devel@lists.openwrt.org
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/openwrt-devel>,
 <mailto:openwrt-devel-request@lists.openwrt.org?subject=subscribe>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/openwrt-devel>, 
 <mailto:openwrt-devel-request@lists.openwrt.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/openwrt-devel/>
Reply-To: Thomas Albers <thomas.gameiro@googlemail.com>
List-Help: <mailto:openwrt-devel-request@lists.openwrt.org?subject=help>
Subject: Re: [OpenWrt-Devel] [PATCH] kernel-build: fix kernel_menuconfig
 breakage by forcing YACC
Content-Type: multipart/mixed; boundary="===============3490740769596046185=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

--===============3490740769596046185==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

The sender domain has a DMARC Reject/Quarantine policy which disallows
sending mailing list messages using the original "From" header.

To mitigate this problem, the original message has been wrapped
automatically by the mailing list software.
--===============3490740769596046185==
Content-Type: message/rfc822
MIME-Version: 1.0
Content-Disposition: inline

Received: from mail-vk1-xa44.google.com ([2607:f8b0:4864:20::a44])
	by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iUPGO-0001H5-31
	for openwrt-devel@lists.openwrt.org; Tue, 12 Nov 2019 06:02:53 +0000
Received: by mail-vk1-xa44.google.com with SMTP id j84so4173656vkj.6
        for <openwrt-devel@lists.openwrt.org>; Mon, 11 Nov 2019 22:02:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlemail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=/t6UHij1u+BQDzPTNxRGkjoooxTNr3aPKRZmBGPOJtg=;
        b=XZBP1ypl5GmozXluxefuP3f+0lzMn3A1sbxey1WzkmG95PNARHIzb5AeudMLUqRfkZ
         kytn1H1cJv2sV2a1KEUCNif2GHNCZslRpcpnzSIs0IMP7WUeF4RyNCS7n4idRbv1AMhc
         sZrg4fc/yrAs2CUd/BhLBwJ4UV41XZju4SLkjAnWdlvAysgg9EabR59fVNni9csY545I
         /W3ihA2WFJSauE8j+jZwqErW2ELip0VaqtChic3uTmqQ+93kdbixDB+saaedPKYGX4oJ
         iB8BBihBAwHeqtYuLuMkXhZasQdzidiRZvC7nBoSWgLUSeNjwfonhF2cpUhPa66G7POR
         qRKQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=/t6UHij1u+BQDzPTNxRGkjoooxTNr3aPKRZmBGPOJtg=;
        b=C5FqV3lbO/IVjM+7bsiahSGYOpFQIdximmOvQMXoUkuk+esaEvM8YX4U0iaSrbzGRp
         utQrG9mcfe7cY6ue8NLLZXw95D1xgYsYDxR77BOZPXmaiYDqaf912jnHBc2sLh+HPozV
         rmotfQrgCSiAuzonnRoJa44vZ4nvYjkWMWZ47sBKspubb1iKyWxuNE1s5KvGPt7MSZ/G
         kv/8BgnYqYyI7XkuYK14+8gcSLPXOLV/YlAFdzj1cbGKxkb1yKzGm3EehYB5jFfhoIBS
         ft/I6Q7/n99lVAGEeNDJJXF+K28S0WzLMdCpfY8eQDUEzK65eAkXHSyZ2bi4Kg4W7JZj
         xYOA==
X-Gm-Message-State: APjAAAV7DC4gIuWX5pGLwgDdCcbJsZu/zA4LsKqjqJfHVXODfBcJi+8G
	/AQbTZnqsaPKKlPJt6dnlWY2kK5sjfkssRCvAFE=
X-Google-Smtp-Source: APXvYqy4XJZ2ZrN6nxHOtFXOZplKGXkjQnhF6yDsYgIoFrjD9flCcPfocSgOaoDkGAQMu6A4LFHeWxkKVAyn56a6F7I=
X-Received: by 2002:a1f:e0c2:: with SMTP id x185mr20117976vkg.6.1573538569566;
 Mon, 11 Nov 2019 22:02:49 -0800 (PST)
MIME-Version: 1.0
References: <20191111205558.2403-1-ynezz@true.cz>
In-Reply-To: <20191111205558.2403-1-ynezz@true.cz>
From: Thomas Albers <thomas.gameiro@googlemail.com>
Date: Tue, 12 Nov 2019 00:02:37 -0600
Message-ID: <CALYGOBUTa_2ZfrJPoZJ31xD58E01ZMVp2ZSANtn5d1tcBtPAdg@mail.gmail.com>
Subject: Re: [PATCH] kernel-build: fix kernel_menuconfig breakage by forcing YACC
To: =?UTF-8?Q?Petr_=C5=A0tetiar?= <ynezz@true.cz>
Cc: openwrt-devel@lists.openwrt.org, Stijn Tintel <stijn@linux-ipv6.be>, 
	Eneas U de Queiroz <cotequeiroz@gmail.com>
Content-Type: text/plain; charset="UTF-8"
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191111_220252_131506_5F7AF504 
X-CRM114-Status: UNSURE (   6.36  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
                              no trust
                             [2607:f8b0:4864:20:0:0:0:a44 listed in]
                             [list.dnswl.org]
  0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
                             provider
                             (thomas.gameiro[at]googlemail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
                             valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
                             author's domain
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain

Hello!

Since the purpose of the previous patch is to use host pkg-config
instead of toolchain pkg-config, wouldn't the more correct be to also
use host bison?

The current patch
> +               YACC=$(STAGING_DIR_HOST)/bin/bison \
uses toolchain bison to be consistent with the definition of
BISON_PKGDATADIR but that may have the logic backwards.

Thomas


--===============3490740769596046185==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============3490740769596046185==--
