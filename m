Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 688D41A4B66
	for <lists+openwrt-devel@lfdr.de>; Fri, 10 Apr 2020 22:49:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Date:To:From:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=RoyX03neArtj4N7Jzs9uY8v9mpp+EitEwTHRR6dGv+U=; b=iu9TwmvDXVsz1I
	eLSuVtIyPGbRd9lyH7uLtncaDOJ+jbDGVs9BzBaL0NJq85NLDx5JGgYBab7GKsLYgNqj0zcb6GmUM
	+Xr6SNbZOEFVv8s8BlFJWGzQoaCqa31tYygmBzMtKKqOYFPQ+2uTz7I0uoMM534CuRC6D0uXAO7HZ
	qQ2tQghZdKPBBXLb7tCKgOXxHOoKf0O9mZ4yfi5k37qBUtXkIPJ7secAH36wUTlNi+T8pxAp14BWH
	T7r9KMw3LxMXAXakk56/SO3Kget9pDvILoESOYFCungyTxtMr4+acaqFAmv26Wouy1zO1O9mTuC/H
	iEeIUPYxNm5OLqvCu7+A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jN0a7-0004VG-0f; Fri, 10 Apr 2020 20:48:55 +0000
Received: from smtp-auth.no-ip.com ([8.23.224.60] helo=out.smtp-auth.no-ip.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jN0a1-0004UW-Fj
 for openwrt-devel@lists.openwrt.org; Fri, 10 Apr 2020 20:48:50 +0000
X-No-IP: flyn.org@noip-smtp
X-Report-Spam-To: abuse@no-ip.com
Received: from www.flyn.org (unknown [68.134.18.32])
 (Authenticated sender: flyn.org@noip-smtp)
 by smtp-auth.no-ip.com (Postfix) with ESMTPA id CBA9514A
 for <openwrt-devel@lists.openwrt.org>; Fri, 10 Apr 2020 13:48:41 -0700 (PDT)
Received: by www.flyn.org (Postfix, from userid 1001)
 id 102952600103; Fri, 10 Apr 2020 16:48:41 -0400 (EDT)
Received: from dragon (dragon [192.168.1.231])
 by www.flyn.org (Postfix) with ESMTP id EB97426000F2
 for <openwrt-devel@lists.openwrt.org>; Fri, 10 Apr 2020 16:48:40 -0400 (EDT)
Message-ID: <7ec62c210cb8f78808f8225ebf33a60dee76a2ca.camel@flyn.org>
From: "W. Michael Petullo" <mike@flyn.org>
To: openwrt-devel@lists.openwrt.org
Date: Fri, 10 Apr 2020 16:48:40 -0400
User-Agent: Evolution 3.36.1 (3.36.1-1.fc32) 
MIME-Version: 1.0
X-Bogosity: Ham, tests=bogofilter, spamicity=0.124657, version=1.2.5
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200410_134849_534965_17705437 
X-CRM114-Status: UNSURE (   3.75  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [8.23.224.60 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [8.23.224.60 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
Subject: [OpenWrt-Devel] Java compiler
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

Has anyone tried to build a Java compiler package for OpenWrt? I am
investigating doing this. I see the lang/jamvm JVM, but no compiler
akin to devel/gcc or lang/golang. I have packaged a number of things,
but I suspect this will be a bit more of a challenge. Hence my question
here.

Thank you!

--
Mike

:wq


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
