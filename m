Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B7FDF42DC
	for <lists+openwrt-devel@lfdr.de>; Fri,  8 Nov 2019 10:10:32 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:MIME-Version:References:Message-ID:
	In-Reply-To:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=CaEG5tPPb6Si1RkSNC59i+KgvOW1uE63YtLSxrX/Nto=; b=Vb0mwy/nTx1CiMWZSX61MGCO/
	NHl3yzhUxW8ql9dNjwkmZ1k7hmsReYXeLNJfK7ECrucAujY3xn7623BqVIOWgAiIckDjS2XjC2EfR
	40Q6OXhoVn15wqp7zhJudthNMV6I43CJumP1m7i/Pbm7RZa6ge6BZ9Usw/dlnIBFFrsQKuSjIA3Dy
	BH74XSiB17Ba9Gkk4gp81XFJJaHbci6Ta1n+tLsvLLw2LXah5fpPa/sb6nCmydgCDyymCxdh2KouT
	/5hmoGNNCeasXyIyepEQZ0VdRlmrtd1N42czyMYFLoKlXMZTh+X3gIx5vIHGvF2pPpN8XKpAOL2jd
	bNUaDMNLQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iT0Hj-0000jc-OV; Fri, 08 Nov 2019 09:10:27 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iT0Hb-0000j9-P0
 for openwrt-devel@lists.openwrt.org; Fri, 08 Nov 2019 09:10:21 +0000
Received: by mail-wm1-x341.google.com with SMTP id z19so5382161wmk.3
 for <openwrt-devel@lists.openwrt.org>; Fri, 08 Nov 2019 01:10:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:in-reply-to:message-id:references
 :mime-version; bh=pWJW5t4FmFJnKfi5VEqK2tIiKZ2yAk1SfYz24mIXxgU=;
 b=QWBZhwguvpWrNXfFUim95AFzLYQ4GpaEJEZ6uVZxttARKlkC/znobx1H359uWgqXq0
 R2We7AUy39CDofkYcC17yNt3h4J02VhJ29IJlnN4+pfQgeIac12eDHCUOw8aoG2ibJiB
 wutMbDpfi0bDqpzpgmH6q3uAvl+qeQkW4xaD1IWqJRPCtfTpGZf/5RJrNxe+HrjQfSja
 h75NYE7/c8Qw06Jyi5t10ZrYS9VokGShmGrOACQIOkJQJEEHvWVv476od+ThxvXuUiE7
 VZTto3Er4wFe89ayCVhBVrtFVdPwaQN50mHxWE8eK57EkVX99JxrIvOkeYRGMhl+CORY
 0lkA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:in-reply-to:message-id
 :references:mime-version;
 bh=pWJW5t4FmFJnKfi5VEqK2tIiKZ2yAk1SfYz24mIXxgU=;
 b=Jpiu374X52fIwPpm4Js7RnbJGwXEr/LhtgegENk2ytN6/tdFj6NI8q6WWYaOv2inMA
 L8hffX9FvuxmpnyXSJwVyXJ2AckWPcYoWOImw9fCBP5fyxBfS6E5qtJSEDmD0HDo+I1c
 uyLGiynJTpVsamtQ9ZDTptMqs24zy0sUA+nmVq/ycx4bXZ/kBZbHpDsoqFj58OWAfbZ3
 stRk1I333XsV57thxfcN1/ijeXjKQCt7K3C0V3630NwoL/cqM3UCderPede0v5fiXay8
 TGCzEGrjCX2+mb8I6CMKwKywmhIzCUPXPj71o70OOUgLznQciwBhrewHh5ZhnhYMiOBs
 w4VQ==
X-Gm-Message-State: APjAAAVNmRJaQ8VEnSK8VgFRP1cO9D/wsTUWR4o6SnfFiuPZZXD3BXmV
 vFcg0KMiuiSs5617xL/ZdDs=
X-Google-Smtp-Source: APXvYqwP+KhDKA9r+hFBVwlU5eiJMwj9l/e2hVZI2quj/lAxoRXmfvrNj5OAa++9W4Qg7gGyVwxkZw==
X-Received: by 2002:a05:600c:3cd:: with SMTP id
 z13mr7187439wmd.105.1573204217797; 
 Fri, 08 Nov 2019 01:10:17 -0800 (PST)
Received: from mStation (host120-32-dynamic.15-87-r.retail.telecomitalia.it.
 [87.15.32.120])
 by smtp.gmail.com with ESMTPSA id f140sm6167428wme.21.2019.11.08.01.10.16
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 08 Nov 2019 01:10:16 -0800 (PST)
Date: Fri, 8 Nov 2019 10:10:15 +0100 (CET)
From: Enrico Mioso <mrkiko.rs@gmail.com>
X-X-Sender: mrkiko@mStation.localdomain
To: Lars Melin <larsm17@gmail.com>
In-Reply-To: <a30b30c9-d8e2-bd70-cec3-9aaced800a84@gmail.com>
Message-ID: <alpine.LNX.2.21.99999.353.1911081005580.2829@mStation.localdomain>
References: <20191103113247.9782-1-fercerpav@gmail.com>
 <002b01d594f1$ebb56320$c3202960$@gmx.de>
 <20191107051927.GT1190@home.paul.comp> <20191108075039.GU1190@home.paul.comp>
 <a30b30c9-d8e2-bd70-cec3-9aaced800a84@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191108_011019_836086_C9E09D48 
X-CRM114-Status: UNSURE (   6.97  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 1.1 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (mrkiko.rs[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 1.3 MALFORMED_FREEMAIL     Bad headers on message from free email
 service
Subject: Re: [OpenWrt-Devel] [PATCH] ath79: add D-Link DIR-615 rev. E4
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org




On Fri, 8 Nov 2019, Lars Melin wrote:
>
> Don't complicate simple things, all D-Link routers have a recovery web page 
> and you access it with your browser, not with curl.
>
> /Lars
>

Some things maybe simple to you, yet complicated to me, and vice-versa. To me,using "curl" to perform recovery may prove to be much simpler than having to open a web browser.
And if recovery is localized in a language I don't know (e.g.: Chinese), having a "curl" shortcut is really valuable. and not only because I use assistive technologies to perform those things. :)

thanks to you and all for your great work,
Enrico


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
