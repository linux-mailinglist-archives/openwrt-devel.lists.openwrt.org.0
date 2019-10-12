Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A54F4D4BD3
	for <lists+openwrt-devel@lfdr.de>; Sat, 12 Oct 2019 03:28:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:To:Message-ID:Date:From:MIME-Version:Reply-To:Cc:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=y4On/bK4cT+QcSU/xeKh3qLJuBzwDJ4JQTzLBrHRQ6k=; b=Xxg
	GSYDulPIBq6wU0QO1rPO2rEH+iBMTgpaoEjT9XyEjhjZ7iy7RXWVrRp4XNM1EEJNGq8jdLG1/AdKR
	gAKGyf5L/8r4VmSAwctE+ymRS2pyT1LaXU1nC7+0+yETQEepadrTD7lot1YOGNqxATZJPUcBE1l55
	OsXyAj0lTY+Y8w/VQziZGFf0ZVGRh++9DNKT5NDJs7Rf6UV2K8oq3UnaAFyG87dHjIB+fpKnlbJV5
	VAUSQzWIPMTxJ1v1p8Ei17YhgdBoA3DlL3q94t/pejruvJaCLrsCgmgIf8TOR1NMxuyoqPe2HZxkH
	9qkD9rvZXz6WsdyOOXIVOD+PvhNhGdQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iJ6Cx-0007Eo-C5; Sat, 12 Oct 2019 01:28:35 +0000
Received: from mail-qt1-x82b.google.com ([2607:f8b0:4864:20::82b])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iJ6Cp-0007ET-QJ
 for openwrt-devel@lists.openwrt.org; Sat, 12 Oct 2019 01:28:29 +0000
Received: by mail-qt1-x82b.google.com with SMTP id n7so16559541qtb.6
 for <openwrt-devel@lists.openwrt.org>; Fri, 11 Oct 2019 18:28:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to;
 bh=/0KgLG/qkRHNFDhDaSwUOXJKh5ugB6GBWIUbvjLqzDY=;
 b=VuPUjlGlWVR1b+DJgi9UZiwdeL4H6J5f4tCWDi5Lp5Dh9qEE5bXL0JsLyteiK3CbHn
 Z1d5Bm+O+mqN0T9mZutwwMBAPvwAvDm9vsBvVxsXkC2s61gL8Y/nLeNlGgZgL+WC4wPy
 nU8q2X0EYmg+fN5iORGcVi4PvGecIjlsBxO7CkQPfRWYca7/SX2rnPU/HPM0ZqWEcL8Z
 OMCyM+qNT5C0/7hj0MDW8/M1OTRmZhHyaGyVhBJ1kybND4chKZXzKnA9oH2QyhKit9xJ
 QwxDP36eC6MODclzcTjbmk2QNwlOq/De31Lk1BnE0QCS4Xcx4FTRV9USc7nAGNlb5bxw
 rpDA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=/0KgLG/qkRHNFDhDaSwUOXJKh5ugB6GBWIUbvjLqzDY=;
 b=N8hgc7et8O9dPnmVeAD46xzWq/FUkr/ipDEFrJgOWAFACqsZnD31L7GvrqmBLJB8Nc
 rdHnVbJu/lpOVjmJ7wlGdG+apOL6ZcQffIX5sF9prgfkdwZyB2ydiAkpqaP5rj6o7R5f
 Yny63T2Aw12Hme3U5ijyr4/NvfUt6b4sqOy5iJzoZqEF1vt7q1hiSk5yClyXsl85+8MF
 eVw5UsoMqxZYWRJ/ZNEHXzyEhvnysKSGMvhWv6vBs3q8Bi++lEJqBrcqY21o/CTyHMcr
 QJDTMmZWRqsEzb5HApJM/n1KW9wnYwN6XylfF63XJYNbqxTGfMjRFmRcypUim72pxRuc
 MtsA==
X-Gm-Message-State: APjAAAWfOmOruXmePl7Ix/gs5pt9SlwmTlC54w7DP5NJpOXbMzdbJqy8
 oRLwlq8V+Fbnwvsjmf0laMfLj5WbNVEOBVPPFjOt
X-Google-Smtp-Source: APXvYqyAmWqgVUsahldeiI9Cxp9Y4U1/zwzzSEcjvGYR5c5CpCZplw4Ov2sijlKd0wkhymflFKCm6PnUYTTeVwrU5z4=
X-Received: by 2002:a0c:95d2:: with SMTP id t18mr19696961qvt.50.1570843705998; 
 Fri, 11 Oct 2019 18:28:25 -0700 (PDT)
MIME-Version: 1.0
From: Gordon Shawn <capcoding@gmail.com>
Date: Fri, 11 Oct 2019 20:28:15 -0500
Message-ID: <CAK0iFYzw=Khe1Qh_z7FeFZgF7i7RxMZiN=wLGcVi6DEnNdRO9w@mail.gmail.com>
To: openwrt-devel@lists.openwrt.org
X-Bad-Reply: 'Re:' in Subject but no References or In-Reply-To headers
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191011_182827_853124_BC0453B2 
X-CRM114-Status: UNSURE (   3.37  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:82b listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (capcoding[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 HTML_MESSAGE           BODY: HTML included in message
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
Subject: Re: [OpenWrt-Devel] OpenWrt 19.07 release schedule ?
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
Content-Type: multipart/mixed; boundary="===============4312532418257585294=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

--===============4312532418257585294==
Content-Type: multipart/alternative; boundary="0000000000001800260594ac8d65"

--0000000000001800260594ac8d65
Content-Type: text/plain; charset="UTF-8"

What about skipping 19.07 and focusing on 20.03 instead? Based on the
resource I think one release per year is not bad. By then Luci will be in a
better shape and a newer kernel can also be used instead.

--0000000000001800260594ac8d65
Content-Type: text/html; charset="UTF-8"

<div dir="ltr">What about skipping 19.07 and focusing on 20.03 instead? Based on the resource I think one release per year is not bad. By then Luci will be in a better shape and a newer kernel can also be used instead.</div>

--0000000000001800260594ac8d65--


--===============4312532418257585294==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============4312532418257585294==--

