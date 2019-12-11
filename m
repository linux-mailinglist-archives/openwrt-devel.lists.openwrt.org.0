Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F19111A45E
	for <lists+openwrt-devel@lfdr.de>; Wed, 11 Dec 2019 07:18:12 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:To:Message-ID:Date:From:MIME-Version:Reply-To:Cc:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=AXgByT5gS1/uLIaSQLnWyaZp9vxkNoR/6uznnDPhZZ8=; b=baR
	snz6e+0NH5rjXzsQv6bCfyKAo5kOfmpU74CrECvOS7jsbPOGOb8La7Q0RsSMoQne0XNG/ap+Xt31I
	2eEPhalMRMoeREnIjIqBXh7YxZIOrPZrO8hFrfokUfsXDqmNqhOVmIjd0/FRRUYpDTiud0xi+yfrG
	06ZyfMz8RevQCNl2lxoUvo994U7f3Kci0xKQFhicS46yYmyAOyVI4U39thqidy4/RdpRSM8kkGp4r
	9oEi/DiwRFm9dkMKrFljMs6BKNb3N1Y8za6XpWXiQSpEwcEeZ2dR+tA8YSQnBEtrZe5twr6+Y0J60
	Mkv3Gxbtfyfz9KLaEEqK9ssF0TKZsFg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ievJp-00017o-4k; Wed, 11 Dec 2019 06:17:53 +0000
Received: from mail-wr1-x433.google.com ([2a00:1450:4864:20::433])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ievJc-000174-5a
 for openwrt-devel@lists.openwrt.org; Wed, 11 Dec 2019 06:17:45 +0000
Received: by mail-wr1-x433.google.com with SMTP id z3so22693557wru.3
 for <openwrt-devel@lists.openwrt.org>; Tue, 10 Dec 2019 22:17:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to;
 bh=XgU0xCnDGTftt78wkV/LlM5zeC/ER5MkWWidGRSRfiY=;
 b=POgX4T9NHPK3fdaOV3Jr9YmGBvJ1m8ebtUntHvPgl6wxp4FDHc4l0gsHe810RUuU1x
 uXro58t15GS5JZZsVi0o8zkUezTjsDCm/5K1BXaWyzxui19phVTXWGUlljt8pe214xJz
 rK5twY78TZuwPudkzTm4yiMFAxFmq8yAFYPZ6yLTvzDrGQSCxilzLW2wxYYZhIsJDcY5
 8FJ8mZ6pgxM4d2LlzQATqVhbkwuV8hQ3jN4Nm4N9/lgaq0QAUkt8lFjpOstiFLxs7Plm
 q5NyrA0QayS6IZjybdEfshI9CoGd13FgUQ0urH2DcLGQxtV/HYQtRatAxqEWWgDWSsDs
 eoGg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=XgU0xCnDGTftt78wkV/LlM5zeC/ER5MkWWidGRSRfiY=;
 b=C7C6nc4/NHW0OBNgp6cdbxOy1q38wvqhA3CeaMGL6qs1BQYXwDZ2FcGwFPJPzU84Dw
 +MC3g5SHq0ladRjPOZoFM3mDJMSCS9VofWbwCEPUErCnLFQDj9DLt9Ta5R8bJTfIsXdj
 NS87OhkOgUvhR3oDXCWMli3skTTpidbHjdtsbnnvF8U5FJOkLSm4hCrNv7JLmYo53oUI
 ysWYuW3YIQg7M9Ztkustbn8GtmnbeCLmkvGvyJrvpqQST8A6IkMI4ozres+Q6ZnhWsyt
 +Nrb58jbopj+CStGuGn9QSDpjneANGHUKF6ztwgg5nsBIQsE2cdD8QkYCWK2ontCx3+B
 X+9g==
X-Gm-Message-State: APjAAAVl9xtgg5ROfVgfnbuKg726szAp6oyz3gkYOZR3xbSoXCEZkfMJ
 mI4PJfG4IxLmXMHh8TYDduKY+G3/o4C8VxA205mKf1zfDJk=
X-Google-Smtp-Source: APXvYqzID3WfB/FC+7yrUY9l7vuOv9aAKcsXgg9q6u+BuXAJxk4eSXOP4xUkmTEGSuhMyzaY35uLSoVllIqrPRRZtXc=
X-Received: by 2002:a5d:62d0:: with SMTP id o16mr1610791wrv.197.1576045055063; 
 Tue, 10 Dec 2019 22:17:35 -0800 (PST)
MIME-Version: 1.0
From: John Wick <johnwickcyber@gmail.com>
Date: Wed, 11 Dec 2019 11:47:24 +0530
Message-ID: <CANtF88fWk+3eyOyE+HGdFrEYCTrJeZQ47b0bhyRmyCs7rHWrxQ@mail.gmail.com>
To: openwrt-devel@lists.openwrt.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191210_221741_187424_5194165A 
X-CRM114-Status: UNSURE (   2.46  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:433 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (johnwickcyber[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 HTML_MESSAGE           BODY: HTML included in message
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
Subject: [OpenWrt-Devel] Requesting a custom firmware for a router
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
Content-Type: multipart/mixed; boundary="===============8824823939959152016=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

--===============8824823939959152016==
Content-Type: multipart/alternative; boundary="000000000000a83b8e059967954e"

--000000000000a83b8e059967954e
Content-Type: text/plain; charset="UTF-8"

Kind request to upload the custom firmware for router model TP-LINK
TD-W8951ND v5.0 if possible

--000000000000a83b8e059967954e
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Kind request to upload the custom firmware for router mode=
l TP-LINK TD-W8951ND v5.0 if possible=C2=A0=C2=A0<br></div>

--000000000000a83b8e059967954e--


--===============8824823939959152016==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============8824823939959152016==--

