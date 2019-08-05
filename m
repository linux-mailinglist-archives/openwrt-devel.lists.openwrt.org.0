Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F0FF826C6
	for <lists+openwrt-devel@lfdr.de>; Mon,  5 Aug 2019 23:24:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:References:In-Reply-To:Message-ID:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=UZrWewGNj8zNzWacar+hqdV6d7ixAmCNIV3f+rIqQ/8=; b=RMdKmtZPyeM215aoNDEwoXeoV
	6XwencvIx03nOEm+jvgttCYIsCP+X8jrvYqSyppj6wMbFK/+H9pAUvtCSlc1NO535CEm9aLQ4OHLB
	YC+C8W0ZAF6Lpv0/FPRB18/164AJ9Q75uwYVyT4i3HFNmuDCjLY21ZLLCIIYIMmTovIJQmqgztCIT
	cgBYH5sNxRVl6umNPfb+KMGtRPKAE0Ee5Q1Iih/qvXy/NfxXtBb1pMxcAvnBLtIeT5q9UCQdnM40N
	2h1dz9iPqIHSKNtM2mlGTGmpDkdeSY9KaBvdAJCZTJ6iLYiBDF9c0uptui0wjA9eA7Dwqtpze/1Wm
	kkstppFdQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hukSS-0005QB-SB; Mon, 05 Aug 2019 21:23:56 +0000
Received: from mail.base45.de ([2001:67c:2050:320::77])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hukSD-0005K6-4d
 for openwrt-devel@lists.openwrt.org; Mon, 05 Aug 2019 21:23:50 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=fe80.eu;
 s=20190804; h=Content-Type:MIME-Version:References:In-Reply-To:Message-ID:
 Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=16EvUZvp92uvxCFAvrDRIg7t2nFRKlTF/LoBWw1sivc=; b=rfNMIz6VHKt4dFQIRck4/Vv3xX
 5ggtuas0hjzJT+QY+Sjsl2CXyimogctARvVjL0PC6JjrordUmsLjrxgAkks8WR7L4+ibhqideFGYZ
 YR/RrQA99rSkQUN97TusgfL3L1lfj+R8I0j05Y7vCbt0LdOqeOzge1LrUQEg704EtOHJlhR9H4vib
 rirW4BC96tdNFzogJ12KxGahNtuidPjkd/vv2w1eem2fY3iIWXiDP1kLAVeW4E0ax0EAB53sifhgo
 wa/2KzKa3X/Ul7zk2ZnYar52i+9BnIvnU4d6UinKveiET0m8djgSpfclXLO7GvT1HxvpeBIkrEc74
 0nEq32PQ==;
Received: from static.214.155.40.188.clients.your-server.de ([188.40.155.214]
 helo=lazus.yip)
 by mail.base45.de with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <lynxis@fe80.eu>)
 id 1hukS8-0001wp-By; Mon, 05 Aug 2019 21:23:36 +0000
Date: Mon, 5 Aug 2019 23:23:34 +0200
From: Alexander Couzens <lynxis@fe80.eu>
To: Adrian Schmutzler <freifunk@adrianschmutzler.de>
Message-ID: <20190805232334.72808226@lazus.yip>
In-Reply-To: <20190805134817.1942-1-freifunk@adrianschmutzler.de>
References: <20190805134817.1942-1-freifunk@adrianschmutzler.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190805_142343_894332_F3D78D76 
X-CRM114-Status: UNSURE (   5.37  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 0.1 DKIM_INVALID           DKIM or DK signature exists, but is not valid
Subject: Re: [OpenWrt-Devel] [PATCH 1/2] treewide: convert MAC address
 location offsets to hexadecimal
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
Content-Type: multipart/mixed; boundary="===============8687539941907308570=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

--===============8687539941907308570==
Content-Type: multipart/signed; boundary="Sig_/xbgLrE=JfesiU+/y5Qh_oGc";
 protocol="application/pgp-signature"; micalg=pgp-sha512

--Sig_/xbgLrE=JfesiU+/y5Qh_oGc
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: quoted-printable

On Mon,  5 Aug 2019 15:48:16 +0200
Adrian Schmutzler <freifunk@adrianschmutzler.de> wrote:

> This changes the offsets for the MAC address location in
> mtd_get_mac_binary* and mtd_get_mac_text to hexadecimal notation.

Acked-by: Alexander Couzens <lynxis@fe80.eu>

--Sig_/xbgLrE=JfesiU+/y5Qh_oGc
Content-Type: application/pgp-signature
Content-Description: OpenPGP digital signature

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEEOQ3PeIv5qlBPj/Hiwp6dpqDfhgQFAl1InlcACgkQwp6dpqDf
hgThKw//Y1MvY5EJw5x4BjYL+YmD6ulzbHTcgcodDQFnMK7mIr6c74NgfpvTtYG3
nxnAYuIsklBkgC9KnSp+vw6Kpj0FfBI1sfPgjb0hTjJeRRHTXcJKkm5a3PaWYIi7
h4/J3gDHFe6tbtCTHbUCL2/FQafk8ctiPdrbwanLMpt3reE5f/vFAxGk+RZCYnLX
RQ+9IOyIl6YgPOeMd55O5z+fJdjgTti47WO53MPxuqTpjb/b8REaU+jafKGOrwHh
gihQzmhhJ0oPfS/IlM2EZvJoOzi6403jQjXXCaSnhhe++sHD3K8g2Xm4sAprFl6L
NFWj+5TcxrL75G/92o0q2u55CDn+29IFMrQs3oaqC9YDMRNZM6Bg/JapYr8t7+UE
YB9CgLJ2eFapwn5oeJn8y+VV2R/CXP/z/3RHXZPQ4FNU1pEN17R9X3IRcgK1l04I
gDsqyLyoswsNnCfDdnjEx+9H4w4mvN9UC/ORZ05zIbY6NBz76ZVUq6UlJzOkydq0
q6vX3Nejtmn9GIdANDwTVhZDCvpjsxlrYhsh1Pc7X9tdgtWWhCD+wJNbPnnjqhjB
sco4ASgaYFT67infSKAh8RZmLbxdB2buyY931vk3s6B8Ovoucz3Z8gRKon3Oaa7h
HUWh22g1zSPQDsGuStkDRgJw6WjVyNzyeL9JmxHkEfFl1PGdlLU=
=psz9
-----END PGP SIGNATURE-----

--Sig_/xbgLrE=JfesiU+/y5Qh_oGc--


--===============8687539941907308570==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============8687539941907308570==--

