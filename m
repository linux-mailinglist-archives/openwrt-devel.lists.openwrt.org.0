Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BD023B351
	for <lists+openwrt-devel@lfdr.de>; Sat, 27 Apr 2019 14:29:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:To:Message-ID:Date:From:MIME-Version:Reply-To:Cc:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=uMQbDKbXJu7GhSEPxFu4wBNFGT2IMVgfJWvU2T0iheA=; b=a3p
	hsiYjN6dE1Mg1/zg3CnBmS4RM6TwXjTeI67ugpYEKFQtDOSJF3+LR6xL/0FCIA1rYwr9wRIoLTTLO
	o03IcnaTb0eCwQlCkgEg0+yckHm7doT3TN8ly7gyKfLQQ9U8CNSM0OnQvi4atxjwNoH/LPxbF9VNo
	m3FtHFINPbOmHtHXVwcpV1haeoVXwtdgUHZ5lWkh+D1OpCJPPFhR2WKNWd0dZTxbxm0cFB4NqzOwd
	MTsk3DVzLVZCXljlAWZOpJcC/YU1/JDwq/w0OErWCO7B/Wb7uiVYqIAc3rhM6tZuFBvLoHOUFjCBr
	jXdSSS3f+hEvEdhpXqo9RkE6Pk2w+uQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hKMSY-0007pY-Vq; Sat, 27 Apr 2019 12:29:38 +0000
Received: from mail-qt1-x833.google.com ([2607:f8b0:4864:20::833])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hKMST-0007ou-C6
 for openwrt-devel@lists.openwrt.org; Sat, 27 Apr 2019 12:29:34 +0000
Received: by mail-qt1-x833.google.com with SMTP id e2so6419587qtb.4
 for <openwrt-devel@lists.openwrt.org>; Sat, 27 Apr 2019 05:29:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to;
 bh=bVrNrYOWP0HiPgV8TO2AnOCMotIhG472mIjEbttJWWY=;
 b=dOVICfCjPwAdUxaqF55Wjdxun/qqwz0E/Feq6JXLVeNrnoKxyS+tlIxDu9UGEm7bKM
 4yuiBvwnlnVRm+OAoRZl3UOlwfxCmhgApav+6cvsDP+SPEMiO8epGCCM28LdvAnJrFr3
 OLAf+I9tp2E3F8jV6tT8wFZPdWp2e9Z9os6ujOe9kBpJjU2/8KDUCzBnVaZjIEw2JgqE
 StaFY26i3EDNLV4ww4qBEstkIVDHuhJSF+HBrIe+jladvOR59z60AShOLRBWl6yJPOwz
 ZlTKcL7W0B8pONtjRxHgeQr7r5yC0UbL0KKxurQLzRQG+lH33SsSklw0ViwqxlgBhNJ3
 lEqA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=bVrNrYOWP0HiPgV8TO2AnOCMotIhG472mIjEbttJWWY=;
 b=PkxOC2LzLe5agC3EnqgDF1kPu2FjLK0COviU/gk1fL4LbvOsi7JJodKd/5LCXDFT2S
 usMjm+7ZMLDkDwDwBDP+pxyQjXR4YOP+0zMl4q+6W4L6YNb0gRCiijDcfWw1xpN2P/DV
 0wyQFfO00ujfw9BHHwi1/Fs/UbnDlE7ysX/2TKFsnD0DQidcI8UzDj63vIA2R5AGGAgg
 fat3OlsohLT981nfKGbzFILv6cGKrMa9cxLST6+CyxmKFMwjztsJ9fC1vq8FnECmbxKz
 mWsSG6md+F6zoZAdw1IrPKxS/YX7Xf6FYzeOS0aaneqibsPDVkvHVYqbVbUPMuRGFe3V
 ALYw==
X-Gm-Message-State: APjAAAWxAKr1ndZ6BdCVZB3REnhVSx9FrvNZmRFZSMT/xAQph/tPXHm4
 5ivewV9H4x/VjKL0xmdhDhUkLZ6jLtocW8EUa+N5FQ==
X-Google-Smtp-Source: APXvYqwOSGet6aHVUTNgBh0SeJSfPxaLPyuJqA08MgFDteKN/B8r+HCz+p/DNuNMsNMyqO92t5S1LgfvGgkglPG0IY0=
X-Received: by 2002:aed:3efb:: with SMTP id o56mr28702801qtf.8.1556368168410; 
 Sat, 27 Apr 2019 05:29:28 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:aed:21c8:0:0:0:0:0 with HTTP; Sat, 27 Apr 2019 05:29:27
 -0700 (PDT)
From: ban Lin <linban888888@gmail.com>
Date: Sat, 27 Apr 2019 05:29:27 -0700
Message-ID: <CAG71GdBSH92PgU-juYmjPU2=GtUkLKSwCn18d1uYAUpihCYFCQ@mail.gmail.com>
To: openwrt-devel@lists.openwrt.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190427_052933_450713_7123888B 
X-CRM114-Status: UNSURE (   2.65  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:833 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (linban888888[at]gmail.com)
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (linban888888[at]gmail.com)
 0.0 HTML_MESSAGE           BODY: HTML included in message
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
Subject: [OpenWrt-Devel] please help me
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
Content-Type: multipart/mixed; boundary="===============5560570667731872711=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

--===============5560570667731872711==
Content-Type: multipart/alternative; boundary="000000000000d163d705878233b8"

--000000000000d163d705878233b8
Content-Type: text/plain; charset="UTF-8"

I need firmware for totolink n305rb ,please help me ,thanks a lot,totolink
n305rb

--000000000000d163d705878233b8
Content-Type: text/html; charset="UTF-8"

I need firmware for totolink n305rb ,please help me ,thanks a lot,totolink n305rb

--000000000000d163d705878233b8--


--===============5560570667731872711==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============5560570667731872711==--

