Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C622A14F8F7
	for <lists+openwrt-devel@lfdr.de>; Sat,  1 Feb 2020 17:40:22 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=IApJigQlBJqUjCkyLixLVLdtVIPcLmrRyAUQBJ+Rfrc=; b=cgU3tjMSOBA3vTM/9vloibSTMl
	MUcHewqL1btXJP1xzEO7+6iMyjjcRniRn6b6Q3gWly3H4hjm1/tSwmUTQycQJfFAcx6Fk6cslJVGR
	rEB3ShmO6bbE2N2UuBOFQQWvDILH3NKGV+9MnePnhfQMogzQgexlsc57uMC0ICRew+iD1i6dJ7QfJ
	yy//tWGzSnvnjYiFzMXnlPz7HWwgpMMDVj9LbbMUgHl6kBur7Ut3Q7oMLP9fI4vR/ycZaO/KrO6J9
	v6LE09ettePYuthsRDRGFUcBsEzCZocRFJJnX5kX8IGTR1NOQhRfsrXyqXuDxW74Xo0+YJVAIEc1Q
	ZUxIsAaQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ixvod-0000FB-AS; Sat, 01 Feb 2020 16:40:15 +0000
Received: from mail-qt1-x833.google.com ([2607:f8b0:4864:20::833])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ixvoQ-00088T-0a
 for openwrt-devel@lists.openwrt.org; Sat, 01 Feb 2020 16:40:03 +0000
Received: by mail-qt1-x833.google.com with SMTP id v25so8001565qto.7
 for <openwrt-devel@lists.openwrt.org>; Sat, 01 Feb 2020 08:40:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to;
 bh=uJMobnsdcv72YShbb8JbbV0zz/Ob5+KpHaGrHIRLRmg=;
 b=vL3PN1ym+zDO73GF+56jTcwVFZnM1FhGtR+yiAB6N7yIwz9PfrznINFAMFCcWR4Tcr
 1pXvTZ9vwfgTM6qXyKkporjLcWsPGYGJq3gPNImTi7sULplD71vs4yC42v34SscD8M8e
 FMkrvFj3szlSdeNFFmZbB9no1yFMkLjfd97pG4a6PlKiqWHOfoM7NyqHDNchvE0IQKJR
 EwMkOpDW59LsoXSCzSqBB4H6CB+9geBkkJ6y8OEI/nriEz5Y1qqmAh7CfNdnX/7Wp6os
 ZLg5TywOP6Nk9iqB2ZujQMK4z+nocZYwT1lx/vUAmm2c3nJWwqmBYvj37fMXMc44jMEW
 omZw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to;
 bh=uJMobnsdcv72YShbb8JbbV0zz/Ob5+KpHaGrHIRLRmg=;
 b=SovVBB/jFwrqPhotTanJmrZll2HEgW1OnZaERmoqnmGnyCt7x1TxDbUNiBmDf/3qRN
 4/eP1WQ36Sl5f5KhLxUx4rds+aPST5OC0wHU1SgBuYstCRyUSUWPj1txRHruF7vSe3du
 OOIM6ZhSd433HmjyIVNpmx3xa+rzRJW1LxrzUateiLUf9xb7al/jUiEoB2zQU3thAMZo
 1vMO/3VRvpDpDWQlwoopBzPIac7OBxx7+G+1VYA5EebhwOO/53ojxFKAjlEHF7KGSsbt
 xS/wxCBItajZgUNp88yn0JAdpwdsPlnsT1Oej5SXwTGZsdgO4aGdGuOKj8XkFLZfxXDh
 PPmQ==
X-Gm-Message-State: APjAAAW5S+FlU98UZXn+J/wd5J1cadnOj1mD8AefI7wkfU419/q1r2Bq
 AJ5s17sFXEW5ZBNrq9Vgz5tB5dRY7YABuuEJ25xiRO9V
X-Google-Smtp-Source: APXvYqx6kZsM1NTf8CAZHavjdphbf89b9kxK1bOv9KjtkXZNRBhHnX9kxPVHCPBthyu+BROHaK+e9PBdkNHJ5v86vU0=
X-Received: by 2002:aed:218f:: with SMTP id l15mr15969630qtc.247.1580575196941; 
 Sat, 01 Feb 2020 08:39:56 -0800 (PST)
MIME-Version: 1.0
References: <CACfEFw8s5k30Zp+u_o=qbXqeRBAHa7uEGQ9mzqRsd8TvbXYXaw@mail.gmail.com>
In-Reply-To: <CACfEFw8s5k30Zp+u_o=qbXqeRBAHa7uEGQ9mzqRsd8TvbXYXaw@mail.gmail.com>
From: Wes Turner <wes.turner@gmail.com>
Date: Sat, 1 Feb 2020 11:39:45 -0500
Message-ID: <CACfEFw-pWFiSpumGYb81_7GEN0QLB7smWriSWrYX5yYGizAfCA@mail.gmail.com>
To: openwrt-devel@lists.openwrt.org
X-Bad-Reply: References and In-Reply-To but no 'Re:' in Subject.
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200201_084002_092165_AFBE7B55 
X-CRM114-Status: UNSURE (   5.87  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:833 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [wes.turner[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: [OpenWrt-Devel] RFI: OpenWRT Upgrade System; ENH,SEC suggestions
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Saw this post and thought I'd forward it along here.
https://news.ycombinator.com/item?id=22208557

"""
It's definitely an issue that the sha256 checksum check was broken.
But, can someone explain why a person who is MITM'ing ipk downloads
would change the package and not the checksum?
Are there GPG signatures of the package checksums signed with a key
that ships with the release?
Are package repos downloaded over HTTPS? Is there a CA bundle in the
release with which repo x.509 certs are validated?
"""
"""
I installed newest version OpenWRT on a popular brand, recently
manufactured wireless router last week.

The OpenWRT firmware couldn't access https sites without installing
multiple packages first. Then they had me install all the root certs
over an unencrypted connection. The opkg repos and install files are
all downloaded over http.

With full seriousness, I really hope nobody expects operational
security using these routers.
"""

There's likely some misunderstanding here.
Is there a wiki page or similar describing how package repo catalogs,
packages, and firmware image updates are
built,
checksummed,
signed,
distributed,
and
signed-checksum-checked?

- https://en.wikipedia.org/wiki/The_Update_Framework_(TUF) is a great read.
  - https://theupdateframework.io/
  - https://github.com/theupdateframework/specification/blob/master/tuf-spec.md
re: "Thandy"
- "PEP 458 -- Secure PyPI downloads with package signing"
  https://www.python.org/dev/peps/pep-0480/
- "PEP 480 -- Surviving a Compromise of PyPI: The Maximum Security Model"
  https://www.python.org/dev/peps/pep-0458/

Side note: something like these would be great to have; IDK which
repos are appropriate for possible new issues to be owned by someone
who knows what is going on:

ENH: CDN for package repos and latest version file
ENH,SEC: firmware update check script
ENH,SEC: send an email when the firmware is out of date
ENH,SEC: luci: display firmware update check result and link to latest firmware

ENH,SEC: add package repo (and firmware?) signing key to keyring

ENH,SEC: include ca-certificates and/or openwrt-certificates in builds?

Thought I'd forward this along,
It seemed deserving of review for something with time to review

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
