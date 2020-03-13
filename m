Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 96521184664
	for <lists+openwrt-devel@lfdr.de>; Fri, 13 Mar 2020 13:02:44 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-ID:Date:
	In-Reply-To:References:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JQiywwn5VCVaz16YKAKr/g/7TCNcIBTScgJSw927sAU=; b=OhSaJHlpQtJJlw
	5VgUDLfp1jvc9yrrjt2IwjSFpXVEuB9OHDjAkrnekgvwvhqZ3scspMxwBgScVOaQnuENapuxlzl0K
	S7ipyR9Kj2rfJ+PbkjMWjXZ9i9juLNuINDvogzw/FT12T4hdTjguBaa9WtlWYpMLJcyu+rllcgNbt
	YkQbXcIYrNhv8bZOwHZ7Eav/NrFCtWNyuwybHf0gJYZhyEC6bXHD0XgFAejMmZr60h0uL765+5CUj
	yS8LpTXntwshFNuQ4s4lWra+tbNpkgUQFrK8J43GMTOthK42BTn6VqDUzrc0kjzAfhoBrTDxA/X33
	z9yytU5x6VPKg6rWEUYA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jCj1Q-0001Nr-Vq; Fri, 13 Mar 2020 12:02:36 +0000
Received: from mout.kundenserver.de ([212.227.126.187])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jCj13-0001EN-Pz
 for openwrt-devel@lists.openwrt.org; Fri, 13 Mar 2020 12:02:15 +0000
Received: from btcskp ([132.180.49.42]) by mrelayeu.kundenserver.de (mreue009
 [212.227.15.167]) with ESMTPSA (Nemesis) id 1MbRXd-1jjazi0f7p-00br9Z; Fri, 13
 Mar 2020 13:02:11 +0100
From: "Adrian Schmutzler" <mail@adrianschmutzler.de>
To: "'Luis Araneda'" <luaraneda@gmail.com>, <openwrt-devel@lists.openwrt.org>
References: <20200313032313.383555-1-luaraneda@gmail.com>
 <20200313032313.383555-2-luaraneda@gmail.com>
In-Reply-To: <20200313032313.383555-2-luaraneda@gmail.com>
Date: Fri, 13 Mar 2020 13:02:10 +0100
Message-ID: <006501d5f92f$3a268600$ae739200$@adrianschmutzler.de>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 15.0
Content-Language: de
Thread-Index: AQJZT1RipxLpYczUcqYHkhfaJgx+ZQHtN3mJpzBV1HA=
X-Provags-ID: V03:K1:DWDhVoZiCk91eF6ahLR+DUbgv6YoRIzzF8mmAeYb173J5sVrVxc
 Rt6+KXJ0WhnbYP2iUAv2vwQjsirb7k1QYFNXVMKhImMoDyNdQ9IWukwMnsjTPtq+bwwG+Tr
 Rnz/vpGyUe1kuhQdmpH7qM2Yn0kceQj18SjCBBXnG0Jjmxhdqlh7j9zdSav2RxOh+jPP/EP
 9h8WZvuaGuHoreDHa02yw==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:H0+enwhkOBE=:APCyhG1WpqRggJSb/OHbFP
 5aaY5sL9MrDf0uwm0wfEiRQOBN2XLr9ZWxQxXyqaE9JZFaz58YAOU8iXxGEzgCX0Dg9YM/jES
 dm9iOUefsuWJdlOSXTiruI969JhuAAx0DSmxlnazGLfHFtxKkZ+MZHQHR6q32R091DMIWClmY
 yrSbloDqlXKnDJ1krgwrAp0KNIayJimlid/QVteII+l51WLOQAnnwJlM0yG5jflLvX1qoeps1
 swhDDwQXU60gZ/fVpjZPvFzCcJQviMf5cg2k63efQ+HthSy7xnQZGXuZemWWnSxp5j9RqQ6ca
 2116h7sIwXS1NHCpLMNHyFRZ+KKz6Gz6aG/dEWrdJ0aHR00ZLb9aIIHJZHz2s64r1qvZDwR99
 W6Lo+DvzC+B41abi1rrS0EfA1nYe/hqKiAwT/neQIwxFGQ+2MBCu+t6lgXPVFHskLAKGGor8z
 NX0WvXhtvHDpauh99pciifRzJ8gBMvnJcgxB30ldLsagrc+CsiCgT/G9zMcSk8a7XpUSVZYBh
 eo760sLSqE5G9cwuc9I0nje9O0owrCSR/V4JVBjmA2ZIh4hfIM4VB1N/Y4eZSwkgMKmuh3sbH
 hguoikBvsivcLy9A8IR9k2FtyduErd9GAisqp4OGASUPC2YBVr0/jcDPN0m43r7wntKU75u9L
 g6YhECr0tcojEZ0A3gz67PTtPXLVYaztSx9OILxljrXfTEDqMP+6NZRU1nKhm8F1NdatU+FLp
 kvFbZF4ydpkLiPj8x3/RFDGvieUvEME9KSvTzC3ebA1bhjTVPOi6EgiKXS7EjDyvRI2MnDCk1
 hzX8ahCNZABoPDV+uwixI6btARHOgyA2yNWmEByLWyOwd3sslcznaRb0y8IP6qRJCgcgiDK
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200313_050214_127965_C6683F91 
X-CRM114-Status: UNSURE (   4.70  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.187 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [212.227.126.187 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
Subject: Re: [OpenWrt-Devel] [PATCH 1/3] zynq: copy config from kernel 4.19
 to 5.4
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
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

> -----Original Message-----
> From: openwrt-devel [mailto:openwrt-devel-bounces@lists.openwrt.org] On
> Behalf Of Luis Araneda
> Sent: Freitag, 13. M=E4rz 2020 04:23
> To: openwrt-devel@lists.openwrt.org
> Cc: Luis Araneda <luaraneda@gmail.com>
> Subject: [OpenWrt-Devel] [PATCH 1/3] zynq: copy config from kernel 4.19 t=
o 5.4
> =

> Refreshed kernel 4.19 config before copying the file

I do not see a change to kernel 4.19 config in this patch and why would you
refresh the old config before copying to the new kernel? =



_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
