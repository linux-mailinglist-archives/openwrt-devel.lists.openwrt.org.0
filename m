Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D494B13F19
	for <lists+openwrt-devel@lfdr.de>; Sun,  5 May 2019 13:06:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=h1jDGliQd6oYFtJ2sgFX2ZTGj0BfMyo2oO50Or1b5KI=; b=akYLT3nbXRXGFS
	i5CJ3W+R6kV1VHTO+BRHtEOUiM0RDh2u43WA4ZQMyrpulXR0UULgGKPOkkoUWvdZoQC5d1wbNwCqT
	/CRjx3xaPskLfnJSZ8NEBcvQcfvt5X8NJyUYKSG0/atNeRMmtZuOllvtU5845ZVtjzsm97ieU/gjj
	nr7yDKnW4ftx8VzLLOyX+8ofkudO2p1netsHNYFthVtDIo94xLkFchDT7mPRw0Un0UiCiCa0nbnqG
	EfbEHhZxcwl0xocgGETAtB9e0SZ8IiYGSZdZoOIrkDZrk5YwFq1lNtCETkePhKqw+vb5RUHBANuuK
	joeTNSCUhTK+8iJWVrDQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hNEyJ-00078m-13; Sun, 05 May 2019 11:06:19 +0000
Received: from mail-ot1-x344.google.com ([2607:f8b0:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hNExm-0006To-Jo
 for openwrt-devel@lists.openwrt.org; Sun, 05 May 2019 11:05:50 +0000
Received: by mail-ot1-x344.google.com with SMTP id a10so9061420otl.12
 for <openwrt-devel@lists.openwrt.org>; Sun, 05 May 2019 04:05:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=JGE+uzDFD9nU+7PyojXZDpwXrmv+1hCQCbmOl8fygy8=;
 b=F7ZfxAtxxI5XQBfVCtIYMVTAm9hP4NFwU3aqM816cQlKpQ/pF/XC5Dz0TiXT0EvfTT
 LvnkbFtb4sLpMPY0xpSQERj//Y5VUa+PTwP6eknVHqHc5hfVXgie3qpK2t7AC0MGFwao
 rvsPJaT/nL5mExgxLArv8yVYN8QU+UxJKe9wBxHqVabncGqgOawESRfkCzhtOzbFjPwL
 Fxyf+EN1D+a7eIuRlok1mWOwGDt8KH3DfLpoyZWOQ1YzCquNolZ1qKK9pD3uYW7Gguq+
 LnNkk+8xX5sRTcR28EhDuULGwegauIf16OYqiJ+KnRyp9kIsC97llMRLfRBOcIz7dwJa
 zqvQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=JGE+uzDFD9nU+7PyojXZDpwXrmv+1hCQCbmOl8fygy8=;
 b=Y08cSznn9N/G8ZWjmsQA4wyW4TI2A+Dgt0ttIGfv2yZnkWdMwuYVQS8+MynNpKM889
 pauYT2e202KDnR/Qrigu9WnEQJ45xvlVVxycEbPDp8wNhknltsSJsPBvWuvh/k+Im2st
 eOcHjWGM1At/PqLl1bNGkVxj72kwswlyXRFMQLrA3mUnNKxa9qhcHeUScAMDoXcbVYQj
 CHeNX5R4Ls6IMLJULHsMyaL9lsPBcD+FATQF7/oy1VDyNkd42/qSdculowd9J92k52ge
 EP2ih9J7wLI0gmhPdTA6C7RhGqFI0HxS2nGdLIDv94pHPdyHofNq9UL59ShAQTiclU3i
 a1rA==
X-Gm-Message-State: APjAAAUYYhhcgAn0REQzQEPz27pL3vqjBpw/z3wei7A4/JnXQ1tEYcDZ
 uKqnnM1ZbYJJzkLYT1Ye5/D8BTnS+xN/V5PBUf+qew==
X-Google-Smtp-Source: APXvYqxpwkiWQViqDwrcn42Vf38OaqvEyDwlOXe37WLt8fy2cpTBLgQ2QwpEyeqT/9gbuDYtJbW4Bu1XtYCcyxOUELc=
X-Received: by 2002:a05:6830:15d5:: with SMTP id
 j21mr260293otr.175.1557054344484; 
 Sun, 05 May 2019 04:05:44 -0700 (PDT)
MIME-Version: 1.0
References: <20190503145852.6125-1-kristian.evensen@gmail.com>
 <CAKR_QVJr+jhSwAM05fh_pmsHBKY=KxwWD8+HziN_15Zxzrn0pw@mail.gmail.com>
In-Reply-To: <CAKR_QVJr+jhSwAM05fh_pmsHBKY=KxwWD8+HziN_15Zxzrn0pw@mail.gmail.com>
From: Kristian Evensen <kristian.evensen@gmail.com>
Date: Sun, 5 May 2019 13:05:33 +0200
Message-ID: <CAKfDRXhAoEgya5yka5p-LVMkzoNPzuZ=nm8J06gQ3hkqTa41DA@mail.gmail.com>
To: Tom Psyborg <pozega.tomislav@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190505_040547_636027_7DBCB760 
X-CRM114-Status: UNSURE (   7.48  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (kristian.evensen[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: Re: [OpenWrt-Devel] [PATCH v2] ramips: Add support for Head Weblink
 HDRM200
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
Cc: OpenWrt Development List <openwrt-devel@lists.openwrt.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Hi,

On Sun, May 5, 2019 at 12:53 PM Tom Psyborg <pozega.tomislav@gmail.com> wrote:
> > - 1x 5GHz wifi (mt7621)
>
> mt7621 is not wifi chip, you should update the description or just
> leave mt76 if you intention is to specify supporting driver.

Thanks for spotting this typo. I know very well that mt7621 is not a
wifi chip, it should have said mt7612.

BR,
Kristian

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
